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
    public partial class ClientForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "BEATRIZBORG9FB5\\SQLEXPRESS";
        private String sqlCatalog = "ManABank_v3";

        private bool adding;
        private int currentListEntry;

        public ClientForm()
        {
            InitializeComponent();
        }


        /**
         * Event Handlers
         */
        private void ClientForm_Load(object sender, EventArgs e)
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all clients
            SqlCommand cmd = new SqlCommand("SELECT * FROM CLIENT", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load clients
            while (reader.Read())
            {
                Client c = new Client();
                c.CCID = reader["cc_id"].ToString();
                c.NIF = reader["NIF"].ToString();
                c.Email = reader["email"].ToString();
                c.Name = reader["name"].ToString();
                c.Address = reader["address"].ToString();
                c.Nationality = reader["nationality"].ToString();
                c.DateBirth = reader["date_of_birth"].ToString().Substring(0, 10);
                c.ManagerID = reader["manager_id"].ToString();
                listBox1.Items.Add(c);
            }

            // close connection to BD
            cn.Close();

            // show first client
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

            // make CC field readable only since this is an
            // update and not the creation of a new client
            txtCC.ReadOnly = true;
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                saveClient();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtCC.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
        }
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeClient(((Client)listBox1.SelectedItem).CCID);
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
         * Client Data Handling Helper Functions
         */
        private bool saveClient()
        {
            Client c = new Client();
            try
            {
                c.CCID = txtCC.Text;
                c.NIF = txtNIF.Text;
                c.Email = txtEmail.Text;
                c.Name = txtName.Text;
                c.Address = txtAddress.Text;
                c.Nationality = txtNationality.Text;
                // change month and day (otherwise an exception
                // will be raised when converting between String and Date)
                c.DateBirth = txtDateBirth.Text.Substring(3,3) // month
                                + txtDateBirth.Text.Substring(0, 3) // day
                                + txtDateBirth.Text.Substring(6, 4); //year
                c.ManagerID = txtManagerID.Text;

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
                updateClient(c);
                listBox1.Items[currentListEntry] = c;
            }
            return true;
        }
        private void submitEntry(Client C)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT CLIENT (cc_id, NIF, email, address, " +
                "name, date_of_birth, manager_id, nationality) " +
                "VALUES (@cc_id, @NIF, @email, @address, " +
                "@name, @date_of_birth, @manager_id, @nationality) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@cc_id", C.CCID);
            cmd.Parameters.AddWithValue("@NIF", C.NIF);
            cmd.Parameters.AddWithValue("@Email", C.Email);
            cmd.Parameters.AddWithValue("@Address", C.Address);
            cmd.Parameters.AddWithValue("@Name", C.Name);
            cmd.Parameters.AddWithValue("@date_of_birth", C.DateBirth);
            cmd.Parameters.AddWithValue("@manager_id", C.ManagerID);
            cmd.Parameters.AddWithValue("@Nationality", C.Nationality);
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
        private void updateClient(Client C)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE CLIENT " +
                "SET NIF = @NIF, " +
                "    email = @Email, " +
                "    address = @Address, " +
                "    name = @Name, " +
                "    date_of_birth = @date_of_birth, " +
                "    manager_id = @manager_id, " +
                "    nationality = @Nationality " +
                "WHERE cc_id = @cc_id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@cc_id", C.CCID);
            cmd.Parameters.AddWithValue("@NIF", C.NIF);
            cmd.Parameters.AddWithValue("@email", C.Email);
            cmd.Parameters.AddWithValue("@address", C.Address);
            cmd.Parameters.AddWithValue("@name", C.Name);
            cmd.Parameters.AddWithValue("@date_of_birth", C.DateBirth);
            cmd.Parameters.AddWithValue("@manager_id", C.ManagerID);
            cmd.Parameters.AddWithValue("@nationality", C.Nationality);
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
        private void removeClient(string clientCC)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE CLIENT WHERE cc_id=@CCID ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CCID", clientCC);
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
            Client c = new Client();
            c = (Client)listBox1.Items[currentListEntry];
            txtCC.Text = c.CCID;
            txtNIF.Text = c.NIF;
            txtEmail.Text = c.Email;
            txtName.Text = c.Name;
            txtAddress.Text = c.Address;
            txtNationality.Text = c.Nationality;
            txtDateBirth.Text = c.DateBirth;
            txtManagerID.Text = c.ManagerID;
        }

        // controls' functionality related
        private void lockControls()
        {
            txtCC.ReadOnly = true;
            txtNIF.ReadOnly = true;
            txtEmail.ReadOnly = true;
            txtName.ReadOnly = true;
            txtAddress.ReadOnly = true;
            txtNationality.ReadOnly = true;
            txtDateBirth.ReadOnly = true;
            txtManagerID.ReadOnly = true;
        }
        private void unlockControls()
        {
            txtCC.ReadOnly = false;
            txtNIF.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtName.ReadOnly = false;
            txtAddress.ReadOnly = false;
            txtNationality.ReadOnly = false;
            txtDateBirth.ReadOnly = false;
            txtManagerID.ReadOnly = false;
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
            txtCC.Text = "";
            txtNIF.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            txtAddress.Text = "";
            txtNationality.Text = "";
            txtDateBirth.Text = "";
            txtManagerID.Text = "";
        }


        /**
         * Other Helper Functions
         */
        // SQL connection
        private SqlConnection getSGBDConnection()
        {
            return new SqlConnection("data source="+ sqlDataSource+"; integrated security=true;initial catalog="+sqlCatalog);
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
