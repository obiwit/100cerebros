using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ManABank
{
    public partial class AccountForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "DESKTOP-4V1OF1M\\SQLEXPRESS";
        private String sqlCatalog = "manabank";

        private bool adding;
        private int currentListEntry;

        public AccountForm()
        {
            InitializeComponent();
        }

        /**
         * Event Handlers
         */

        private void loadAccountsFromDB()
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all clients
            SqlCommand cmd = new SqlCommand("SELECT * FROM ACCOUNT", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load clients
            while (reader.Read())
            {
                Account a = new Account();
                a.Id = reader["id"].ToString();
                a.IBAN = reader["IBAN"].ToString();
                a.Avail_balance = reader["avail_balance"].ToString();
                a.BIC_SWIFT = reader["BIC_SWIFT"].ToString();
                a.Account_plan = reader["account_plan"].ToString();
                listBox1.Items.Add(a);
            }

            // close connection to BD
            cn.Close();

            // show first client
            currentListEntry = 0;
            showEntry();
        }
        
        private void AccountForm_Load(object sender, EventArgs e)
        {
            loadAccountsFromDB();
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
            idTxt.ReadOnly = true; //you cannot insert the id of an account
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

            // make CC field readable only since this is an
            // update and not the creation of a new client
            idTxt.ReadOnly = true;

        }

        private void deleteButton_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeAccount(((Account)listBox1.SelectedItem).Id);
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

        private void okButton_Click(object sender, EventArgs e)
        {
            try
            {
                saveAccount();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(idTxt.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
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

        /**
         * Client Data Handling Helper Functions
         */
        private bool saveAccount()
        {
            Account a = new Account();
            try
            {
                a.Id = idTxt.Text;
                a.IBAN = ibanText.Text;
                a.Avail_balance = availBalanceText.Text;
                a.Account_plan = accountPlanTxt.Text;
                a.BIC_SWIFT = bicSwiftTxt.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(a);
                loadAccountsFromDB();
            }
            else
            {
                updateAccount(a);
                listBox1.Items[currentListEntry] = a;
            }
            return true;
        }
        private void submitEntry(Account a)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT ACCOUNT (IBAN, avail_balance, BIC_SWIFT, " +
                "account_plan) " +
                "VALUES (@IBAN, @avail_balance, @BIC_SWIFT, " +
                "@account_plan) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@IBAN", a.IBAN);
            cmd.Parameters.AddWithValue("@avail_balance", a.Avail_balance);
            cmd.Parameters.AddWithValue("@BIC_SWIFT", a.BIC_SWIFT);
            cmd.Parameters.AddWithValue("@account_plan", a.Account_plan);
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
        private void updateAccount(Account a)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE ACCOUNT " +
                "SET IBAN = @IBAN, " +
                "    avail_balance = @avail_balance, " +
                "    BIC_SWIFT = @BIC_SWIFT, " +
                "    account_plan = @account_plan " +
                "WHERE id = @id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", a.Id);
            cmd.Parameters.AddWithValue("@IBAN", a.IBAN);
            cmd.Parameters.AddWithValue("@avail_balance", Convert.ToDecimal(a.Avail_balance));
            cmd.Parameters.AddWithValue("@BIC_SWIFT", a.BIC_SWIFT);
            cmd.Parameters.AddWithValue("@account_plan", a.Account_plan);
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
        private void removeAccount(string accountId)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE ACCOUNT WHERE id=@id ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", accountId);
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
            Account a = new Account();
            a = (Account)listBox1.Items[currentListEntry];
            idTxt.Text = a.Id;
            ibanText.Text = a.IBAN;
            availBalanceText.Text = a.Avail_balance;
            accountPlanTxt.Text = a.Account_plan;
            bicSwiftTxt.Text = a.BIC_SWIFT;
        }

        // controls' functionality related
        private void lockControls()
        {
            idTxt.ReadOnly = true;
            ibanText.ReadOnly = true;
            availBalanceText.ReadOnly = true;
            accountPlanTxt.ReadOnly = true;
            bicSwiftTxt.ReadOnly = true;
        }
        private void unlockControls()
        {
            idTxt.ReadOnly = false;
            ibanText.ReadOnly = false;
            availBalanceText.ReadOnly = false;
            accountPlanTxt.ReadOnly = false;
            bicSwiftTxt.ReadOnly = false;
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
            idTxt.Text = "";
            ibanText.Text = "";
            availBalanceText.Text = "";
            accountPlanTxt.Text = "";
            bicSwiftTxt.Text = "";
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
