using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ManABank
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            //Application.Run(new LoginForm());
            //Application.Run(new ClientForm());
            //Application.Run(new BranchForm());
            //Application.Run(new CardForm());
            //Application.Run(new InvestmentForm());
            //Application.Run(new AccountPlanForm());

            //Application.Run(new EmployeeForm());
            //Application.Run(new AccountForm());
            //Application.Run(new LoanForm());
            //Application.Run(new CreditForm());
            //Application.Run(new DebitForm());
            //Application.Run(new StockPortfolioForm());
            Application.Run(new DepositForm());
        }
    }
}
