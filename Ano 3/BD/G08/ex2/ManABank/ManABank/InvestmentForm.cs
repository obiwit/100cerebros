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
    public partial class InvestmentForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "BEATRIZBORG9FB5\\SQLEXPRESS";
        private String sqlCatalog = "ManABank_v3";

        private bool adding;
        private int currentListEntry;


        public InvestmentForm()
        {
            InitializeComponent();
        }


        /**
         * Event Handlers
         */
        private void InvestmentForm_Load(object sender, EventArgs e)
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all investments
            SqlCommand cmd = new SqlCommand("SELECT * FROM INVESTMENT", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load investments
            while (reader.Read())
            {
                Investment i = new Investment();
                i.ID = reader["id"].ToString();
                i.Balance = reader["balance"].ToString();
                i.ProfitRate = reader["profit_rate"].ToString();
                i.ClientID = reader["client_id"].ToString();
                listBox1.Items.Add(i);
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
                Investment();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtInvestID.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
        }
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    Investment(((Investment)listBox1.SelectedItem).ID);
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
            * INVESTMENT Data Handling Helper Functions
            */
        private bool Investment()
        {
            Investment i = new Investment();
            try
            {
                i.ID = txtInvestID.Text;
                i.ClientID = txtClientID.Text;
                i.Balance = txtInvestBalance.Text.Replace(',', '.');
                i.ProfitRate = txtInvestProfitRate.Text.Replace(',', '.');

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(i);
                // "refresh" listbox to get i's ID
                refreshListBox();
            }
            else
            {
                updateInvestment(i);
                i.Balance = txtInvestBalance.Text.Replace('.', ',');
                i.ProfitRate = txtInvestProfitRate.Text.Replace('.', ',');
                listBox1.Items[currentListEntry] = i;
            }
            return true;
        }
        private void submitEntry(Investment i)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT INVESTMENT (balance, " +
                "profit_rate, client_id) " +
                "VALUES (@Balance, @ProfitRate, @ClientId) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@Balance", i.Balance);
            cmd.Parameters.AddWithValue("@ProfitRate", i.ProfitRate);
            cmd.Parameters.AddWithValue("@ClientId", i.ClientID);
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
        private void updateInvestment(Investment i)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE INVESTMENT " +
                "SET balance = @Balance, " +
                "    profit_rate = @ProfitRate, " +
                "    client_id = @ClientID " +
                    "WHERE id = @ID";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@ID", i.ID);
            cmd.Parameters.AddWithValue("@Balance", i.Balance);
            cmd.Parameters.AddWithValue("@ProfitRate", i.ProfitRate);
            cmd.Parameters.AddWithValue("@ClientID", i.ClientID);
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
        private void Investment(string investID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE INVESTMENT WHERE id=@ID ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@ID", investID);
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
        private void refreshListBox()
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM INVESTMENT", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Investment i = new Investment();
                i.ID = reader["id"].ToString();
                i.Balance = reader["balance"].ToString();
                i.ProfitRate = reader["profit_rate"].ToString();
                i.ClientID = reader["client_id"].ToString();
                listBox1.Items.Add(i);
            }

            cn.Close();


            currentListEntry = 0;
            showEntry();
        }

        /**
            * Interaction Helper Functions 
            */
        // form field's content related
        private void showEntry()
        {
            if (listBox1.Items.Count == 0 | currentListEntry < 0)
                return;
            Investment i = new Investment();
            i = (Investment)listBox1.Items[currentListEntry];
            txtInvestID.Text = i.ID;
            txtInvestBalance.Text = i.Balance;
            txtInvestProfitRate.Text = i.ProfitRate;
            txtClientID.Text = i.ClientID;
        }

        // controls' functionality related
        private void lockControls()
        {
            txtInvestID.ReadOnly = true;
            txtInvestBalance.ReadOnly = true;
            txtInvestProfitRate.ReadOnly = true;
            txtClientID.ReadOnly = true;
        }
        private void unlockControls()
        {
            //txtInvestID.ReadOnly = false;
            txtInvestBalance.ReadOnly = false;
            txtInvestProfitRate.ReadOnly = false;
            txtClientID.ReadOnly = false;
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
            txtInvestID.Text = "";
            txtInvestBalance.Text = "";
            txtInvestProfitRate.Text = "";
            txtClientID.Text = "";
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
