using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    [Serializable()]
    class Investment
    {
        private String _id;
        private String _balance;
        private String _profit_rate;
        private String _client_id;

        /**
         * Constructors
         */
        public Investment() : base()
        {
        }

        public Investment(String ID, String Balance,
            String ProfitRate, String ClientID) : base()
        {
            this.ID = ID;
            this.Balance = Balance;
            this.ProfitRate = ProfitRate;
            this.ClientID = ClientID;
        }

        /**
         * Getters and setters
         */
        public String ID
        {
            get { return _id; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("The investment's ID field can’t be empty");
                    return;
                }
                _id = value;
            }
        }

        public String Balance
        {
            get { return _balance; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("The investment's Risk field can’t be empty");
                    return;
                }
                _balance = value;
            }
        }

        public String ProfitRate
        {
            get { return _profit_rate; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("The investment's 'Profit Rate' field can’t be empty");
                    return;
                }
                _profit_rate = value;
            }
        }

        public String ClientID
        {
            get { return _client_id; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("The investment's associated client account's ID field can’t be empty");
                    return;
                }
                _client_id = value;
            }
        }

        /**
         * Other methods
         */
        public override String ToString()
        {
            return _id + " - " + _balance;
        }
    }
}
