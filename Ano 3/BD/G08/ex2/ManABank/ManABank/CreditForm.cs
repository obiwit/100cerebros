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
    public partial class CreditForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "DESKTOP-4V1OF1M\\SQLEXPRESS";
        private String sqlCatalog = "manabank";

        private bool adding;
        private int currentListEntry;

        public CreditForm()
        {
            InitializeComponent();
            lockControls();
        }

        private void loadCreditsFromDB()
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all employees
            SqlCommand cmd = new SqlCommand("SELECT * FROM CREDIT", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load employees
            while (reader.Read())
            {
                Credit credit = new Credit();
                credit.Account_id = reader["account_id"].ToString();
                credit.Comission = reader["commission"].ToString();
                credit.Plafond = reader["plafond"].ToString();
                listBox1.Items.Add(credit);
            }

            // close connection to BD
            cn.Close();

            //Show first employee
            currentListEntry = 0;
            showEntry();
        }

        private void CreditForm_Load(object sender, EventArgs e)
        {
            loadCreditsFromDB();
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex >= 0)
            {
                currentListEntry = listBox1.SelectedIndex;
                showEntry();
            }
        }
        private void addButton_Click(object sender, EventArgs e)
        {
            adding = true;
            clearFields();
            hideButtons();
            listBox1.Enabled = false;
        }

        private void cancelButton_Click(object sender, EventArgs e)
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

        private void editButton_Click(object sender, EventArgs e)
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

            accountIDTxt.ReadOnly = true;
        }
        private void okButton_Click(object sender, EventArgs e)
        {
            try
            {
                saveCredit();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(accountIDTxt.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
        }
        private void deleteButton_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeCredit(((Credit)listBox1.SelectedItem).Account_id);
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
         * Loan Data Handling Helper Functions
         */
        private bool saveCredit()
        {
            Credit credit = new Credit();
            try
            {
                credit.Account_id = accountIDTxt.Text;
                credit.Comission = comissionTxt.Text;
                credit.Plafond = plafondTxt.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(credit);
                loadCreditsFromDB();
            }
            else
            {
                updateCredit(credit);
                listBox1.Items[currentListEntry] = credit;
            }
            return true;
        }
        private void submitEntry(Credit credit)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT CREDIT (account_id, commission, plafond) " +
                "VALUES (@account_id, @commission, @plafond) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@account_id", credit.Account_id);
            MessageBox.Show("commission:"+credit.Comission);
            cmd.Parameters.AddWithValue("@commission", Convert.ToDecimal(credit.Comission));
            MessageBox.Show("plafond:" + credit.Plafond);
            cmd.Parameters.AddWithValue("@plafond", Convert.ToDecimal(credit.Plafond));
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

        private Object CheckNull(Object o)
        {
            return o.Equals("") ? (Object)DBNull.Value : o;
        }

        private void updateCredit(Credit credit)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE CREDIT " +
                "SET commission = @commission, " +
                "    plafond = @plafond " +
                "WHERE account_id = @account_id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@account_id", credit.Account_id);
            cmd.Parameters.AddWithValue("@commission", Convert.ToDecimal(credit.Comission));
            cmd.Parameters.AddWithValue("@plafond", Convert.ToDecimal(credit.Plafond));
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
                {
                    MessageBox.Show("Update NOT OK");
                }

                cn.Close();
            }
        }

        private void removeCredit(string creditID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE CREDIT WHERE account_id=@id ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", creditID);
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

        /**
         * Interaction Helper Functions 
         */
        // form field's content related
        private void showEntry()
        {
            if (listBox1.Items.Count == 0 | currentListEntry < 0)
                return;
            Credit credit = new Credit();
            credit = (Credit)listBox1.Items[currentListEntry];
            accountIDTxt.Text = credit.Account_id;
            comissionTxt.Text = credit.Comission;
            plafondTxt.Text = credit.Plafond;
        }

        // controls' functionality related
        private void lockControls()
        {
            accountIDTxt.ReadOnly = true;
            comissionTxt.ReadOnly = true;
            plafondTxt.ReadOnly = true;
        }
        private void unlockControls()
        {
            accountIDTxt.ReadOnly = false;
            comissionTxt.ReadOnly = false;
            plafondTxt.ReadOnly = false;
        }
        private void showButtons()
        {
            lockControls();
            addButton.Visible = true;
            deleteButton.Visible = true;
            editButton.Visible = true;
            okButton.Visible = false;
            cancelButton.Visible = false;
        }
        private void hideButtons()
        {
            unlockControls();
            addButton.Visible = false;
            deleteButton.Visible = false;
            editButton.Visible = false;
            okButton.Visible = true;
            cancelButton.Visible = true;
        }
        private void clearFields()
        {
            accountIDTxt.Text = "";
            comissionTxt.Text = "";
            plafondTxt.Text = "";
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
