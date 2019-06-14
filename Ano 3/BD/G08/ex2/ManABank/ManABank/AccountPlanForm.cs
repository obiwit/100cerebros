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
    public partial class AccountPlanForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "BEATRIZBORG9FB5\\SQLEXPRESS";
        private String sqlCatalog = "ManABank_v3";

        private bool adding;
        private int currentListEntry;


        public AccountPlanForm()
        {
            InitializeComponent();
        }

        /**
         * Event Handlers
         */
        private void AccountPlanForm_Load(object sender, EventArgs e)
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all account plans
            SqlCommand cmd = new SqlCommand("SELECT * FROM ACCOUNT_PLAN", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load account plans
            while (reader.Read())
            {
                AccountPlan ap = new AccountPlan();
                ap.PlanCode = reader["name"].ToString();
                ap.BenefitsDescription = reader["benefits_description"].ToString();
                listBox1.Items.Add(ap);
            }

            // close connection to BD
            cn.Close();

            // show first ACCOUNT_PLAN
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
                saveAccountPlan();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtCode.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
        }
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeAccountPlan(((AccountPlan)listBox1.SelectedItem).PlanCode);
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
         * ACCOUNT_PLAN Data Handling Helper Functions
         */
        private bool saveAccountPlan()
        {
            AccountPlan ap = new AccountPlan();
            try
            {
                ap.PlanCode = txtCode.Text;
                ap.BenefitsDescription = txtBenefits.Text;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(ap);
                listBox1.Items.Add(ap);
            }
            else
            {
                updateAccountPlan(ap);
                listBox1.Items[currentListEntry] = ap;
            }
            return true;
        }
        private void submitEntry(AccountPlan ap)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT ACCOUNT_PLAN (name, benefits_description) " +
                "VALUES (@PlanCode, @BenefitsDescription) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@PlanCode", ap.PlanCode);
            cmd.Parameters.AddWithValue("@BenefitsDescription", ap.BenefitsDescription);
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
        private void updateAccountPlan(AccountPlan ap)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE ACCOUNT_PLAN " +
                "SET benefits_description = @BenefitsDescription " +
                "WHERE name = @PlanCode";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@PlanCode", ap.PlanCode);
            cmd.Parameters.AddWithValue("@BenefitsDescription", ap.BenefitsDescription);
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
        private void removeAccountPlan(string PlanCode)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE ACCOUNT_PLAN WHERE name=@PlanCode ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@PlanCode", PlanCode);
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
            AccountPlan ap = new AccountPlan();
            ap = (AccountPlan)listBox1.Items[currentListEntry];
            txtCode.Text = ap.PlanCode;
            txtBenefits.Text = ap.BenefitsDescription;
            //txtNumAccounts.Text = 0;
        }

        // controls' functionality related
        private void lockControls()
        {
            txtCode.ReadOnly = true;
            txtBenefits.ReadOnly = true;
            txtNumAccounts.ReadOnly = true;
        }
        private void unlockControls()
        {
            txtCode.ReadOnly = false;
            txtBenefits.ReadOnly = false;
            //txtNumAccounts.ReadOnly = false;
        }
        private void showButtons()
        {
            lockControls();
            btnOK.Visible = false;
            btnAdd.Visible = true;
            btnEdit.Visible = true;
            btnCancel.Visible = false;
            btnDelete.Visible = true;
        }
        private void hideButtons()
        {
            unlockControls();
            btnOK.Visible = true;
            btnAdd.Visible = false;
            btnEdit.Visible = false;
            btnCancel.Visible = true;
            btnDelete.Visible = false;
        }
        private void clearFields()
        {
            txtCode.Text = "";
            txtBenefits.Text = "";
            txtNumAccounts.Text = "";
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
