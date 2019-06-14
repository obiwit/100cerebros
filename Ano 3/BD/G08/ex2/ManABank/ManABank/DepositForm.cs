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
    public partial class DepositForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "DESKTOP-4V1OF1M\\SQLEXPRESS";
        private String sqlCatalog = "manabank";

        private bool adding;
        private int currentListEntry;

        public DepositForm()
        {
            InitializeComponent();
            lockControls();
        }

        private void loadDepositsFromDB()
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all employees
            SqlCommand cmd = new SqlCommand("SELECT * FROM DEPOSIT", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load employees
            while (reader.Read())
            {
                Deposit deposit = new Deposit();
                deposit.Id = reader["id"].ToString();
                deposit.Payout_frequency = reader["payout_frequency"].ToString();
                listBox1.Items.Add(deposit);
            }

            // close connection to BD
            cn.Close();

            //Show first employee
            currentListEntry = 0;
            showEntry();
        }

        private void DepositForm_Load(object sender, EventArgs e)
        {
            loadDepositsFromDB();
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

            idTxt.ReadOnly = true;
        }
        private void okButton_Click(object sender, EventArgs e)
        {
            try
            {
                saveDeposit();
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
        private void deleteButton_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeDeposit(((Deposit)listBox1.SelectedItem).Id);
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
        private bool saveDeposit()
        {
            Deposit deposit = new Deposit();
            try
            {
                deposit.Id = idTxt.Text;
                deposit.Payout_frequency = payoutFreqTxt.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(deposit);
                loadDepositsFromDB();

            }
            else
            {
                updateDeposit(deposit);
                listBox1.Items[currentListEntry] = deposit;
            }
            return true;
        }
        private void submitEntry(Deposit deposit)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT DEPOSIT (id, payout_frequency) " +
                "VALUES (@id, @payout_frequency) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", deposit.Id);
            cmd.Parameters.AddWithValue("@payout_frequency", deposit.Payout_frequency);
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

        private void updateDeposit(Deposit deposit)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE DEPOSIT " +
                "SET payout_frequency = @payout_frequency " +
                "WHERE id = @id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", deposit.Id);
            cmd.Parameters.AddWithValue("@payout_frequency", deposit.Payout_frequency);
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

        private void removeDeposit(string depositID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE DEPOSIT WHERE id=@id ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", depositID);
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
            Deposit deposit = new Deposit();
            deposit = (Deposit)listBox1.Items[currentListEntry];
            idTxt.Text = deposit.Id;
            payoutFreqTxt.Text = deposit.Payout_frequency;
        }

        // controls' functionality related
        private void lockControls()
        {
            idTxt.ReadOnly = true;
            payoutFreqTxt.ReadOnly = true;
        }
        private void unlockControls()
        {
            idTxt.ReadOnly = false;
            payoutFreqTxt.ReadOnly = false;
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
            payoutFreqTxt.Text = "";
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
