using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    [Serializable()]
    class Client
    {
        private String _ccID;
        private String _nif;
        private String _email;
        private String _name;
        private String _address;
        private String _nationality;
        private String _dateBirth;
        private String _managerID;

        /**
         * Constructors
         */
        public Client() : base()
        {
        }

        public Client(String cc_id, String manager_id) : base()
        {
            this.CCID = cc_id;
            this.ManagerID = manager_id;
        }

        public Client(String cc_id) : base()
        {
            this.CCID = cc_id;
        }

        /**
         * Getters and setters
         */
        public String CCID
        {
            get { return _ccID; }
            set { _ccID = value; }
        }

        public String NIF
        {
            get { return _nif; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("CC (\"Cartao Cidadao\") ID field can’t be empty");
                    return;
                }
                _nif = value;
            }
        }

        public String Email
        {
            get { return _email; }
            set { _email = value; }
        }

        public String Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public String Address
        {
            get { return _address; }
            set { _address = value; }
        }

        public String Nationality
        {
            get { return _nationality; }
            set { _nationality = value; }
        }

        public String DateBirth
        {
            get { return _dateBirth; }
            set { _dateBirth = value; }
        }

        public String ManagerID
        {
            get { return _managerID; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Manager ID field can’t be empty");
                    return;
                }
                _managerID = value;
            }
        }

        /**
         * Other methods
         */
        public override String ToString()
        {
            return _ccID + " -  " + _email;
        }
    }
}
