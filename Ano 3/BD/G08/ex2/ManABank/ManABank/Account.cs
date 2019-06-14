using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    class Account
    {
        private String _id;
        private String _IBAN;
        private String _avail_balance;
        private String _BIC_SWIFT;
        private String _account_plan;

        public Account() { }

        public string Id { get => _id; set => _id = value; }
        public string IBAN { get => _IBAN; set => _IBAN = value; }
        public string Avail_balance { get => _avail_balance; set => _avail_balance = value; }
        public string BIC_SWIFT { get => _BIC_SWIFT; set => _BIC_SWIFT = value; }
        public string Account_plan { get => _account_plan; set => _account_plan = value; }

        /**
        * Other methods
        */
        public override String ToString()
        {
            return _IBAN + " - " + _avail_balance;
        }
    }
}
