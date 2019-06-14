using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    class Debit
    {
        private String _accountID;
        private String _unvailBalance;

        public string AccountID { get => _accountID; set => _accountID = value; }
        public string UnvailBalance { get => _unvailBalance; set => _unvailBalance = value; }

        public override string ToString()
        {
            return AccountID + " - " + UnvailBalance;
        }
    }
}
