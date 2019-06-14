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
    public partial class LoanForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "DESKTOP-4V1OF1M\\SQLEXPRESS";
        private String sqlCatalog = "manabank";

        private bool adding;
        private int currentListEntry;

        public LoanForm()
        {
            InitializeComponent();
            lockControls();
        }

        private void loadLoansFromDB()
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all employees
            SqlCommand cmd = new SqlCommand("SELECT * FROM LOAN", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load employees
            while (reader.Read())
            {
                Loan loan = new Loan();
                loan.Id = reader["id"].ToString();
                loan.Paid_amount = reader["paid_amount"].ToString();
                loan.Total_amount = reader["total_amount"].ToString();
                loan.Interest_rate = reader["interest_rate"].ToString();
                loan.Client_id = reader["client_id"].ToString();
                listBox1.Items.Add(loan);
            }

            // close connection to BD
            cn.Close();

            //Show first employee
            currentListEntry = 0;
            showEntry();
        }

        private void LoanForm_Load(object sender, EventArgs e)
        {
            loadLoansFromDB();
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
            idTxt.ReadOnly = true;
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
                saveLoan();
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
                    removeLoan(((Loan)listBox1.SelectedItem).Id);
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
        private bool saveLoan()
        {
            Loan loan = new Loan();
            try
            {
               loan.Id = idTxt.Text;
               loan.Paid_amount = paidAmount.Text;
               loan.Total_amount = totalAmount.Text;
               loan.Interest_rate = interestTxt.Text;
               loan.Client_id = clientIDTxt.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                idTxt.ReadOnly = true;
                submitEntry(loan);
                loadLoansFromDB();
                
            }
            else
            {
                updateLoan(loan);
                listBox1.Items[currentListEntry] = loan;
            }
            return true;
        }
        private void submitEntry(Loan loan)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT LOAN (paid_amount, total_amount, interest_rate, client_id) " +
                "VALUES (@paid_amount, @total_amount, @interest_rate, @client_id) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@paid_amount", loan.Paid_amount);
            cmd.Parameters.AddWithValue("@total_amount", loan.Total_amount);
            cmd.Parameters.AddWithValue("@interest_rate", loan.Interest_rate);
            cmd.Parameters.AddWithValue("@client_id", loan.Client_id);
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

        private void updateLoan(Loan loan)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE LOAN " +
                "SET paid_amount = @paid_amount, " +
                "    total_amount = @total_amount, " +
                "    interest_rate = @interest_rate, " +
                "    client_id = @client_id " +
                "WHERE id = @id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", loan.Id);
            cmd.Parameters.AddWithValue("@paid_amount", Convert.ToDecimal(loan.Paid_amount));
            cmd.Parameters.AddWithValue("@total_amount", Convert.ToDecimal(loan.Total_amount));
            cmd.Parameters.AddWithValue("@interest_rate", Convert.ToDecimal(loan.Interest_rate));
            cmd.Parameters.AddWithValue("@client_id", loan.Client_id);
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

        private void removeLoan(string loanID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE LOAN WHERE id=@id ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", loanID);
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
            Loan loan = new Loan();
            loan = (Loan)listBox1.Items[currentListEntry];
            idTxt.Text =loan.Id;
            paidAmount.Text =loan.Paid_amount;
            totalAmount.Text =loan.Total_amount;
            interestTxt.Text =loan.Interest_rate;
            clientIDTxt.Text =loan.Client_id;
        }

        // controls' functionality related
        private void lockControls()
        {
            idTxt.ReadOnly = true;
            paidAmount.ReadOnly = true;
            totalAmount.ReadOnly = true;
            interestTxt.ReadOnly = true;
            clientIDTxt.ReadOnly = true;
        }
        private void unlockControls()
        {
            idTxt.ReadOnly = false;
            paidAmount.ReadOnly = false;
            totalAmount.ReadOnly = false;
            interestTxt.ReadOnly = false;
            clientIDTxt.ReadOnly = false;
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
            paidAmount.Text = "";
            totalAmount.Text = "";
            interestTxt.Text = "";
            clientIDTxt.Text = "";
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
