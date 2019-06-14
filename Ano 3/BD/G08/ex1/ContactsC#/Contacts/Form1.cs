using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Contacts
{
    public partial class Form1 : Form
    {
        private SqlConnection cn;
        private int currentContact;
        private bool adding;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            cn = getSGBDConnection();

            // load customers
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Customers", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Contact C = new Contact();
                C.CustomerID = reader["CustomerID"].ToString();
                C.CompanyName = reader["CompanyName"].ToString();
                C.ContactName = reader["ContactName"].ToString();
                C.Address1 = reader["Address"].ToString();
                C.City = reader["City"].ToString();
                C.State = reader["Region"].ToString();
                C.ZIP = reader["PostalCode"].ToString();
                C.Country = reader["Country"].ToString();
                C.tel = reader["Phone"].ToString();
                C.FAX = reader["Fax"].ToString();
                listBox1.Items.Add(C);
            }

            cn.Close();


            currentContact = 0;
            ShowContact();
        }


        private SqlConnection getSGBDConnection() 
        {
            return new SqlConnection("data source=BEATRIZBORG9FB5\\SQLEXPRESS;integrated security=true;initial catalog=Northwind");
        }

        private bool verifySGBDConnection() 
        {
            if (cn == null)
                cn = getSGBDConnection();

            if (cn.State != ConnectionState.Open)
                cn.Open();

            return cn.State == ConnectionState.Open;
        }


        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex >= 0)
            {
                currentContact = listBox1.SelectedIndex;
                ShowContact();
            }
        }

        private void loadCustomersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Customers", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Contact C = new Contact();
                C.CustomerID = reader["CustomerID"].ToString();
                C.CompanyName = reader["CompanyName"].ToString();
                C.ContactName = reader["ContactName"].ToString();
                C.Address1 = reader["Address"].ToString();
                C.City = reader["City"].ToString();
                C.State = reader["Region"].ToString();
                C.ZIP = reader["PostalCode"].ToString();
                C.Country = reader["Country"].ToString();
                C.tel = reader["Phone"].ToString();
                C.FAX = reader["Fax"].ToString();
                listBox1.Items.Add(C);
            }

            cn.Close();


            currentContact = 0;
            ShowContact();
        }

        private void SubmitContact(Contact C)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT Customers (CustomerID, CompanyName, ContactName, Address, " +
                "City, Region, PostalCode, Country, Phone, Fax) " + 
                "VALUES (@CustomerID, @CompanyName, @ContactName, @Address, " +
                "@City, @Region, @PostalCode, @Country, @Phone, @Fax) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CustomerID", C.CustomerID);
            cmd.Parameters.AddWithValue("@CompanyName", C.CompanyName);
            cmd.Parameters.AddWithValue("@ContactName", C.ContactName);
            cmd.Parameters.AddWithValue("@Address", C.Address1);
            cmd.Parameters.AddWithValue("@City", C.City);
            cmd.Parameters.AddWithValue("@Region", C.State);
            cmd.Parameters.AddWithValue("@PostalCode", C.ZIP);
            cmd.Parameters.AddWithValue("@Country", C.Country);
            cmd.Parameters.AddWithValue("@Phone", C.tel);
            cmd.Parameters.AddWithValue("@Fax", C.FAX);
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


        private void UpdateContact(Contact C)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE Customers " + 
                "SET CompanyName = @CompanyName, " + 
                "    ContactName = @ContactName, " + 
                "    Address = @Address, " + 
                "    City = @City, " + 
                "    Region = @Region, " + 
                "    PostalCode = @PostalCode, " + 
                "    Country = @Country, " +
                "    Phone = @Phone, " +
                "    Fax = @Fax " +
                "WHERE CustomerID = @CustomerID";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CustomerID", C.CustomerID);
            cmd.Parameters.AddWithValue("@CompanyName", C.CompanyName);
            cmd.Parameters.AddWithValue("@ContactName", C.ContactName);
            cmd.Parameters.AddWithValue("@Address", C.Address1);
            cmd.Parameters.AddWithValue("@City", C.City);
            cmd.Parameters.AddWithValue("@Region", C.State);
            cmd.Parameters.AddWithValue("@PostalCode", C.ZIP);
            cmd.Parameters.AddWithValue("@Country", C.Country);
            cmd.Parameters.AddWithValue("@Phone", C.tel);
            cmd.Parameters.AddWithValue("@Fax", C.FAX);
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


        private void RemoveContact(string ContactID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE Customers WHERE CustomerID=@contactID ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@contactID", ContactID);
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


        // Helper routines
        public void LockControls()
        {
            txtID.ReadOnly = true;
            txtCompany.ReadOnly = true;
            txtContact.ReadOnly = true;
            txtAddress1.ReadOnly = true;
            txtCity.ReadOnly = true;
            txtState.ReadOnly = true;
            txtZIP.ReadOnly = true;
            txtCountry.ReadOnly = true;
            txtTel.ReadOnly = true;
            txtFax.ReadOnly = true;
        }

        public void UnlockControls()
        {
            txtID.ReadOnly = false;
            txtCompany.ReadOnly = false;
            txtContact.ReadOnly = false;
            txtAddress1.ReadOnly = false;
            txtCity.ReadOnly = false;
            txtState.ReadOnly = false;
            txtZIP.ReadOnly = false;
            txtCountry.ReadOnly = false;
            txtTel.ReadOnly = false;
            txtFax.ReadOnly = false;
        }

        public void ShowButtons()
        {
            LockControls();
            bttnAdd.Visible = true;
            bttnDelete.Visible = true;
            bttnEdit.Visible = true;
            bttnOK.Visible = false;
            bttnCancel.Visible = false;
        }

        public void ClearFields()
        {
            txtID.Text = "";
            txtCompany.Text = "";
            txtContact.Text = "";
            txtAddress1.Text = "";
            txtCity.Text = "";
            txtZIP.Text = "";
            txtState.Text = "";
            txtTel.Text = "";
            txtFax.Text = "";
            txtCountry.Text = "";
        }

        public void ShowContact()
        {
            if (listBox1.Items.Count == 0 | currentContact < 0)
                return;
            Contact contact = new Contact();
            contact = (Contact)listBox1.Items[currentContact];
            txtID.Text = contact.CustomerID;
            txtCompany.Text = contact.CompanyName;
            txtContact.Text = contact.ContactName;
            txtAddress1.Text = contact.Address1;
            txtCity.Text = contact.City;
            txtState.Text = contact.State;
            txtZIP.Text = contact.ZIP;
            txtCountry.Text = contact.Country;
            txtTel.Text = contact.tel;
            txtFax.Text = contact.FAX;
        }

        public void HideButtons()
        {
            UnlockControls();
            bttnAdd.Visible = false;
            bttnDelete.Visible = false;
            bttnEdit.Visible = false;
            bttnOK.Visible = true;
            bttnCancel.Visible = true;
        }

        private bool SaveContact()
        {
            Contact contact = new Contact();
            try
            {
                contact.CustomerID = txtID.Text;
                contact.CompanyName = txtCompany.Text;
                contact.ContactName = txtContact.Text;
                contact.Address1 = txtAddress1.Text;
                contact.City = txtCity.Text;
                contact.State = txtState.Text;
                contact.ZIP = txtZIP.Text;
                contact.Country = txtCountry.Text;
                contact.tel = txtTel.Text;
                contact.FAX = txtFax.Text;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                SubmitContact(contact);
                listBox1.Items.Add(contact);
            }
            else
            {
                UpdateContact(contact);
                listBox1.Items[currentContact] = contact;
            }
            return true;
        }


        private void bttnAdd_Click(object sender, EventArgs e)
        {
            adding = true;
            ClearFields();
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnCancel_Click(object sender, EventArgs e)
        {
            listBox1.Enabled = true;
            if (listBox1.Items.Count > 0)
            {
                currentContact = listBox1.SelectedIndex;
                if (currentContact < 0)
                    currentContact = 0;
                ShowContact();
            }
            else
            {
                ClearFields();
                LockControls();
            }
            ShowButtons();
        }

        private void bttnEdit_Click(object sender, EventArgs e)
        {
            currentContact = listBox1.SelectedIndex;

            // allow editing of the first contact
            if (currentContact < 0)
            {
                MessageBox.Show("Please select a contact to edit");
                return;
            }
            adding = false;
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnOK_Click(object sender, EventArgs e)
        {
            try
            {
                SaveContact();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtID.Text);
            listBox1.SelectedIndex = idx;
            ShowButtons();
        }

        private void bttnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    RemoveContact(((Contact)listBox1.SelectedItem).CustomerID);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
                if (currentContact == listBox1.Items.Count)
                    currentContact = listBox1.Items.Count - 1;
                if (currentContact == -1)
                {
                    ClearFields();
                    MessageBox.Show("There are no more contacts");
                }
                else
                {
                    ShowContact();
                }
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

  


    }
}
