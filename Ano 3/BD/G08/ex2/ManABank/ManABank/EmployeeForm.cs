using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ManABank
{
    public partial class EmployeeForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "DESKTOP-4V1OF1M\\SQLEXPRESS";
        private String sqlCatalog = "manabank";

        private bool adding;
        private int currentListEntry;

        public EmployeeForm()
        {
            InitializeComponent();
        }

        private void EmployeeForm_Load(object sender, EventArgs e)
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all employees
            SqlCommand cmd = new SqlCommand("SELECT * FROM EMPLOYEE", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load employees
            while (reader.Read())
            {
                Employee emp = new Employee();
                emp.Employee_num = reader["employee_num"].ToString();
                emp.CcID = reader["cc_id"].ToString();
                emp.Email = reader["email"].ToString();
                emp.Name = reader["name"].ToString();
                emp.Salary = reader["salary"].ToString();
                emp.HealthCare = reader["health_care"].ToString();
                emp.DateBirth = reader["date_of_birth"].ToString().Substring(0, 10);
                emp.Office = reader["office"].ToString();
                emp.Supervisor = reader["supervisor"].ToString();
                emp.Branch = reader["branch_id"].ToString();
                listBox1.Items.Add(emp);
            }

            // close connection to BD
            cn.Close();

            //Show first employee
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
        private void addButton_Click(object sender, EventArgs e)
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
            // update and not the creation of a new employee
            ccIDtxt.ReadOnly = true;
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                saveEmployee();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(ccIDtxt.Text);
            listBox1.SelectedIndex = idx;
            showButtons();
        }
        private void deleteButton_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    removeEmployee(((Employee)listBox1.SelectedItem).CcID);
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
         * Employee Data Handling Helper Functions
         */
        private bool saveEmployee()
        {
            Employee emp = new Employee();
            try
            {
                emp.CcID = ccIDtxt.Text;
                emp.Employee_num = employeeNumTxt.Text;
                emp.Email = emailTxt.Text;
                emp.Name = nameTxt.Text;
                emp.Salary = salaryTxt.Text;
                emp.HealthCare = healthCareTxt.Text;
                emp.Office = officeTxt.Text;
                emp.DateBirth = dobTxt.Text;
                emp.Supervisor = supervisorTxt.Text;
                emp.Branch = branchIDtxt.Text;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(emp);
                listBox1.Items.Add(emp);
            }
            else
            {
                updateEmployee(emp);
                listBox1.Items[currentListEntry] = emp;
            }
            return true;
        }
        private void submitEntry(Employee emp)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT EMPLOYEE (employee_num,cc_id, email, name, salary, " +
                "date_of_birth, health_care, office,supervisor,branch_id) " +
                "VALUES (@Employee_num, @Cc_id, @Email, @Name, " +
                "@Salary, @Date_of_birth, @Health_care, @Office,@Supervisor,@Branch_id) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@Employee_num", emp.Employee_num);
            cmd.Parameters.AddWithValue("@Cc_id", emp.CcID);
            cmd.Parameters.AddWithValue("@Email", emp.Email);
            cmd.Parameters.AddWithValue("@Name", emp.Name);
            cmd.Parameters.AddWithValue("@Salary", emp.Salary);
            cmd.Parameters.AddWithValue("@Date_of_birth",emp.DateBirth.Substring(3, 3)
                                                        + emp.DateBirth.Substring(0, 3)
                                                        + emp.DateBirth.Substring(6, 4));
            cmd.Parameters.AddWithValue("@Health_care", emp.HealthCare);
            cmd.Parameters.AddWithValue("@Office", emp.Office);
            cmd.Parameters.AddWithValue("@Supervisor", emp.Supervisor);
            cmd.Parameters.AddWithValue("@Branch_id", emp.Branch);
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

        private void updateEmployee(Employee emp)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE EMPLOYEE " +
                "SET employee_num = @Employee_num, " +
                "    cc_id = @Cc_id, " +
                "    email = @Email, " +
                "    name = @Name, " +
                "    salary = @Salary, " +
                "    date_of_birth = @Date_of_birth, " +
                "    health_care = @Health_care, " +
                "    office = @Office, " +
                "    supervisor = @Supervisor, " +
                "    branch_id = @Branch " +
                "WHERE cc_id = @Cc_id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@Employee_num", emp.Employee_num);
            cmd.Parameters.AddWithValue("@Cc_id", emp.CcID);
            cmd.Parameters.AddWithValue("@Email", emp.Email);
            cmd.Parameters.AddWithValue("@Name", emp.Name);
            cmd.Parameters.AddWithValue("@Salary", Convert.ToDecimal(emp.Salary));
            cmd.Parameters.AddWithValue("@Date_of_birth", emp.DateBirth.Substring(3, 3)
                                                        + emp.DateBirth.Substring(0, 3)
                                                        + emp.DateBirth.Substring(6, 4));
            cmd.Parameters.AddWithValue("@Health_care", emp.HealthCare);
            cmd.Parameters.AddWithValue("@Office", emp.Office);
            cmd.Parameters.AddWithValue("@Supervisor", CheckNull(emp.Supervisor));
            cmd.Parameters.AddWithValue("@Branch", emp.Branch);
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

        private void removeEmployee(string employeeCC)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE EMPLOYEE WHERE cc_id=@CCID ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CCID", employeeCC);
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
            Employee emp = new Employee();
            emp = (Employee)listBox1.Items[currentListEntry];
            ccIDtxt.Text = emp.CcID;
            employeeNumTxt.Text = emp.Employee_num;
            emailTxt.Text = emp.Email;
            nameTxt.Text = emp.Name;
            salaryTxt.Text = emp.Salary;
            healthCareTxt.Text = emp.HealthCare;
            dobTxt.Text = emp.DateBirth;
            officeTxt.Text = emp.Office;
            supervisorTxt.Text = emp.Supervisor;
            branchIDtxt.Text = emp.Branch;
        }

        // controls' functionality related
        private void lockControls()
        {
            ccIDtxt.ReadOnly = true;
            employeeNumTxt.ReadOnly = true;
            emailTxt.ReadOnly = true;
            nameTxt.ReadOnly = true;
            salaryTxt.ReadOnly = true;
            healthCareTxt.ReadOnly = true;
            dobTxt.ReadOnly = true;
            officeTxt.ReadOnly = true;
            supervisorTxt.ReadOnly = true;
            branchIDtxt.ReadOnly = true;
        }
        private void unlockControls()
        {
            ccIDtxt.ReadOnly = false;
            employeeNumTxt.ReadOnly = false;
            emailTxt.ReadOnly = false;
            nameTxt.ReadOnly = false;
            salaryTxt.ReadOnly = false;
            healthCareTxt.ReadOnly = false;
            dobTxt.ReadOnly = false;
            officeTxt.ReadOnly = false;
            supervisorTxt.ReadOnly = false;
            branchIDtxt.ReadOnly = false;
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
            ccIDtxt.Text = "";
            employeeNumTxt.Text = "";
            emailTxt.Text = "";
            nameTxt.Text = "";
            salaryTxt.Text = "";
            healthCareTxt.Text = "";
            dobTxt.Text = "";
            supervisorTxt.Text = "";
            officeTxt.Text = "";
            branchIDtxt.Text = "";
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

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
