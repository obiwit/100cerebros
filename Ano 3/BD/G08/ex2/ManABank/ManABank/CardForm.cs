using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ManABank
{
    public partial class CardForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "BEATRIZBORG9FB5\\SQLEXPRESS";
        private String sqlCatalog = "ManABank_v3";

        private bool adding;
        private int currentListEntry;


        public CardForm()
        {
            InitializeComponent();
        }

        /**
         * Event Handlers
         */
        private void CardForm_Load(object sender, EventArgs e)
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all cards
            SqlCommand cmd = new SqlCommand("SELECT * FROM \"CARD\"", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load cards
            while (reader.Read())
            {
                Card c = new Card();
                c.CardNum = reader["card_number"].ToString();
                c.NameOnCard = reader["name_on_card"].ToString();
                c.CVV = reader["cvv"].ToString();
                c.Validity = reader["validity"].ToString().Substring(0, 10);
                c.AccountID = reader["account_id"].ToString();
                listBox1.Items.Add(c);
            }

            // close connection to BD
            cn.Close();

            // show first \"CARD\"
            currentListEntry = 0;
            showEntry();
        }
        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex >= 0)
            {
                currentListEntry = listBox1.SelectedIndex;
                showEntry();
            }
        }
        private void btnAdd_Click(object sender, EventArgs e)
        {
            adding = true;
            clearFields();
            hideButtons();
            listBox1.Enabled = false;
        }
        private void btnCancel_Click(object sender, EventArgs e)
        {
            listBox1.Enabled = true;
            if (listBox1.Items.Count > 0)
            {
                currentListEntry = listBox1.SelectedIndex;
                if (currentListEntry < 0)
                    currentListEntry = 0;
                showEntry();
            }
            else
            {
                clearFields();
                lockControls();
            }
            showButtons();
        }
        private void btnEdit_Click(object sender, EventArgs e)
        {
            currentListEntry = listBox1.SelectedIndex;
            if (currentListEntry < 0)
            {
                MessageBox.Show("Please select a contact to edit");
                return;
            }
            adding = false;
            hideButtons();
            listBox1.Enabled = false;
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                saveCard();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtCardNum.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
        }
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeCard(((Card)listBox1.SelectedItem).CardNum);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
                if (currentListEntry == listBox1.Items.Count)
                    currentListEntry = listBox1.Items.Count - 1;
                if (currentListEntry == -1)
                {
                    clearFields();
                    MessageBox.Show("There are no more contacts");
                }
                else
                {
                    showEntry();
                }
            }
        }
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        /**
         * CARD Data Handling Helper Functions
         */
        private bool saveCard()
        {
            Card c = new Card();
            try
            {
                c.CardNum = txtCardNum.Text;
                c.NameOnCard = txtNameOnCard.Text;
                c.CVV = txtCVV.Text;
                c.AccountID = txtAccountID.Text;
                // change month and day (otherwise an exception
                // will be raised when converting between String and Date)
                c.Validity = txtValidity.Text.Substring(3, 3) // month
                                + txtValidity.Text.Substring(0, 3) // day
                                + txtValidity.Text.Substring(6, 4); //year

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(c);
                listBox1.Items.Add(c);
            }
            else
            {
                updateCard(c);
                listBox1.Items[currentListEntry] = c;
            }
            return true;
        }
        private void submitEntry(Card c)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT \"CARD\" (card_number, name_on_card, " +
                "cvv, validity, account_id) " +
                "VALUES (@CardNum, @NameOnCard, @CVV, @Validity, @AccountId) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CardNum", c.CardNum);
            cmd.Parameters.AddWithValue("@NameOnCard", c.NameOnCard);
            cmd.Parameters.AddWithValue("@CVV", c.CVV);
            cmd.Parameters.AddWithValue("@Validity", c.Validity);
            cmd.Parameters.AddWithValue("@AccountId", c.AccountID);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update contact in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }
        private void updateCard(Card c)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE \"CARD\" " +
                "SET name_on_card = @NameOnCard, " +
                "    cvv = @CVV, " +
                "    validity = @Validity, " +
                "    account_id = @AccountID " +
                    "WHERE card_number = @CardNum";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CardNum", c.CardNum);
            cmd.Parameters.AddWithValue("@NameOnCard", c.NameOnCard);
            cmd.Parameters.AddWithValue("@CVV", c.CVV);
            cmd.Parameters.AddWithValue("@Validity", c.Validity);
            cmd.Parameters.AddWithValue("@AccountID", c.AccountID);
            cmd.Connection = cn;

            try
            {
                rows = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update contact in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                if (rows == 1)
                    MessageBox.Show("Update OK");
                else
                    MessageBox.Show("Update NOT OK");

                cn.Close();
            }
        }
        private void removeCard(string CardNum)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE \"CARD\" WHERE card_number=@CardNum ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CardNum", CardNum);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete contact in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }
        private String getNumAccountTitulars()
        {
            SqlDataReader reader;
            String num_titulars = "";

            if (!verifySGBDConnection())
                return "";
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "SELECT COUNT(*) AS num_titulars " +
                "FROM ACCOUNT_HOLDER " +
                "WHERE account_id=@AccountID";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@AccountID", 
                ((Card)listBox1.Items[currentListEntry]).AccountID);
            cmd.Connection = cn;

            try
            {
                reader = cmd.ExecuteReader();
                reader.Read();
                num_titulars = reader["num_titulars"].ToString();
            }
            catch (Exception ex)
            {
                throw new Exception(
                    "Failed to retrieve number of account's titulars in database. " +
                    "\n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
            return num_titulars; 
        }

        /**
         * Interaction Helper Functions 
         */
        // form field's content related
        private void showEntry()
        {
            if (listBox1.Items.Count == 0 | currentListEntry < 0)
                return;
            Card c = new Card();
            c = (Card)listBox1.Items[currentListEntry];
            txtCardNum.Text = c.CardNum;
            txtNameOnCard.Text = c.NameOnCard;
            txtCVV.Text = c.CVV;
            txtValidity.Text = c.Validity;
            txtAccountID.Text = c.AccountID;

            // get number of titulars
            txtAccountTitularsNum.Text = getNumAccountTitulars();
        }

        // controls' functionality related
        private void lockControls()
        {
            txtCardNum.ReadOnly = true;
            txtNameOnCard.ReadOnly = true;
            txtValidity.ReadOnly = true;
            txtCVV.ReadOnly = true;
            txtAccountID.ReadOnly = true;
            txtAccountTitularsNum.ReadOnly = true;
        }
        private void unlockControls()
        {
            //txtCardNum.ReadOnly = false;
            txtNameOnCard.ReadOnly = false;
            txtValidity.ReadOnly = false;
            txtCVV.ReadOnly = false;
            txtAccountID.ReadOnly = false;
            //txtAccountTitularsNum.ReadOnly = false;
        }
        private void showButtons()
        {
            lockControls();
            btnAdd.Visible = true;
            btnDelete.Visible = true;
            btnEdit.Visible = true;
            btnOK.Visible = false;
            btnCancel.Visible = false;
        }
        private void hideButtons()
        {
            unlockControls();
            btnAdd.Visible = false;
            btnDelete.Visible = false;
            btnEdit.Visible = false;
            btnOK.Visible = true;
            btnCancel.Visible = true;
        }
        private void clearFields()
        {
            txtCardNum.Text = "";
            txtNameOnCard.Text = "";
            txtValidity.Text = "";
            txtCVV.Text = "";
            txtAccountID.Text = "";
            txtAccountTitularsNum.Text = "";
        }


        /**
         * Other Helper Functions
         */
        // SQL connection
        private SqlConnection getSGBDConnection()
        {
            return new SqlConnection("data source=" + sqlDataSource + "; integrated security=true;initial catalog=" + sqlCatalog);
        }

        private bool verifySGBDConnection()
        {
            if (cn == null)
                cn = getSGBDConnection();

            if (cn.State != ConnectionState.Open)
                cn.Open();

            return cn.State == ConnectionState.Open;
        }
    }
}
