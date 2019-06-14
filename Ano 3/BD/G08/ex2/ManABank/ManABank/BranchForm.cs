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
    public partial class BranchForm : Form
{
        private SqlConnection cn;
        private String sqlDataSource = "BEATRIZBORG9FB5\\SQLEXPRESS";
        private String sqlCatalog = "ManABank_v3";

        private bool adding;
        private int currentListEntry;

        public BranchForm()
        {
            InitializeComponent();
        }


        /**
         * Event Handlers
         */
        private void BranchForm_Load(object sender, EventArgs e)
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all BRANCH_BUILDINGs
            SqlCommand cmd = new SqlCommand("SELECT * FROM BRANCH_BUILDING", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load BRANCH_BUILDINGs
            while (reader.Read())
            {
                Branch b = new Branch();
                b.ID = reader["id"].ToString();
                b.City = reader["city"].ToString();
                b.Country = reader["country"].ToString();
                b.NumOffices = reader["num_offices"].ToString();
                b.Address = reader["address"].ToString();
                listBox1.Items.Add(b);
            }

            // close connection to BD
            cn.Close();

            // show first BRANCH_BUILDING
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
                saveBranch();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtID.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
        }
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeBranch(((Branch)listBox1.SelectedItem).ID);
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
         * BRANCH_BUILDING Data Handling Helper Functions
         */
        private bool saveBranch()
        {
            Branch b = new Branch();
            try
            {
                b.ID = txtID.Text;
                b.City = txtCity.Text;
                b.Country = txtCountry.Text;
                b.Address = txtAddress.Text;
                b.NumOffices = txtNumOffices.Text;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(b);
                // "refresh" listbox to get b's ID
                refreshListBox();
            }
            else
            {
                updateBranch(b);
                listBox1.Items[currentListEntry] = b;
            }
            return true;
        }
        private void submitEntry(Branch b)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT BRANCH_BUILDING (city, country, address, " +
                "num_offices) " +
                "VALUES (@city, @country, @address, @num_offices) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@city", b.City);
            cmd.Parameters.AddWithValue("@country", b.Country);
            cmd.Parameters.AddWithValue("@Address", b.Address);
            cmd.Parameters.AddWithValue("@num_offices", b.NumOffices);
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
        private void updateBranch(Branch b)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE BRANCH_BUILDING " +
                "SET city = @city, " +
                "    country = @country, " +
                "    address = @Address, " +
                "    num_offices = @num_offices " +
                    "WHERE id = @id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", b.ID);
            cmd.Parameters.AddWithValue("@city", b.City);
            cmd.Parameters.AddWithValue("@country", b.Country);
            cmd.Parameters.AddWithValue("@address", b.Address);
            cmd.Parameters.AddWithValue("@num_offices", b.NumOffices);
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
        private void removeBranch(string branchID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE BRANCH_BUILDING WHERE id=@branchID ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@branchID", branchID);
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

                SqlCommand cmd = new SqlCommand("SELECT * FROM BRANCH_BUILDING", cn);
                SqlDataReader reader = cmd.ExecuteReader();
                listBox1.Items.Clear();

                while (reader.Read())
                {
                    Branch b = new Branch();
                    b.ID = reader["id"].ToString();
                    b.City = reader["city"].ToString();
                    b.Country = reader["country"].ToString();
                    b.NumOffices = reader["num_offices"].ToString();
                    b.Address = reader["address"].ToString();
                    listBox1.Items.Add(b);
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
            Branch b = new Branch();
            b = (Branch)listBox1.Items[currentListEntry];
            txtID.Text = b.ID;
            txtCity.Text = b.City;
            txtCountry.Text = b.Country;
            txtAddress.Text = b.Address;
            txtNumOffices.Text = b.NumOffices;
                //txtNumEmployees.Text = 0;
            }

        // controls' functionality related
        private void lockControls()
        {
            txtID.ReadOnly = true;
            txtCity.ReadOnly = true;
            txtAddress.ReadOnly = true;
            txtCountry.ReadOnly = true;
            txtNumOffices.ReadOnly = true;
            txtNumEmployees.ReadOnly = true;
            }
        private void unlockControls()
        {
            //txtID.ReadOnly = false;
            txtCity.ReadOnly = false;
            txtAddress.ReadOnly = false;
            txtCountry.ReadOnly = false;
            txtNumOffices.ReadOnly = false;
            //txtNumEmployees.ReadOnly = false;
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
            txtID.Text = "";
            txtCity.Text = "";
            txtAddress.Text = "";
            txtCountry.Text = "";
            txtNumEmployees.Text = "";
            txtNumOffices.Text = "";
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