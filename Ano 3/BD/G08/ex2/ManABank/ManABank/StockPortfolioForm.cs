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
    public partial class StockPortfolioForm : Form
    {
        private SqlConnection cn;
        private String sqlDataSource = "DESKTOP-4V1OF1M\\SQLEXPRESS";
        private String sqlCatalog = "manabank";

        private bool adding;
        private int currentListEntry;

        public StockPortfolioForm()
        {
            InitializeComponent();
            lockControls();
        }

        private void loadStockPortfoliosFromDB()
        {
            // connect to DB
            cn = getSGBDConnection();
            if (!verifySGBDConnection())
                return;

            // get all employees
            SqlCommand cmd = new SqlCommand("SELECT * FROM STOCK_PORTFOLIO", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            // load employees
            while (reader.Read())
            {
                StockPortfolio stock = new StockPortfolio();
                stock.Id = reader["id"].ToString();
                stock.Risk = reader["risk"].ToString();
                listBox1.Items.Add(stock);
            }

            // close connection to BD
            cn.Close();

            //Show first employee
            currentListEntry = 0;
            showEntry();
        }

        private void StockPortfolioForm_Load(object sender, EventArgs e)
        {
            loadStockPortfoliosFromDB();
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
                saveStockPortfolio();
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
                    removeStockPortfolio(((StockPortfolio)listBox1.SelectedItem).Id);
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
        private bool saveStockPortfolio()
        {
            StockPortfolio stock = new StockPortfolio();
            try
            {
                stock.Id = idTxt.Text;
                stock.Risk = riskTxt.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                submitEntry(stock);
                loadStockPortfoliosFromDB();

            }
            else
            {
                updateStockPortfolio(stock);
                listBox1.Items[currentListEntry] = stock;
            }
            return true;
        }
        private void submitEntry(StockPortfolio stock)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT STOCK_PORTFOLIO (id, risk) " +
                "VALUES (@id, @risk) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", stock.Id);
            cmd.Parameters.AddWithValue("@risk", Convert.ToDecimal(stock.Risk));
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

        private void updateStockPortfolio(StockPortfolio stock)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE STOCK_PORTFOLIO " +
                "SET risk = @risk " +
                "WHERE id = @id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", stock.Id);
            cmd.Parameters.AddWithValue("@risk", Convert.ToDecimal(stock.Risk));
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

        private void removeStockPortfolio(string stockPortfolioID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE STOCK_PORTFOLIO WHERE id=@id ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", stockPortfolioID);
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
            StockPortfolio stock = new StockPortfolio();
            stock = (StockPortfolio)listBox1.Items[currentListEntry];
            idTxt.Text = stock.Id;
            riskTxt.Text = stock.Risk;
        }

        // controls' functionality related
        private void lockControls()
        {
            idTxt.ReadOnly = true;
            riskTxt.ReadOnly = true;
        }
        private void unlockControls()
        {
            idTxt.ReadOnly = false;
            riskTxt.ReadOnly = false;
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
            riskTxt.Text = "";
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
