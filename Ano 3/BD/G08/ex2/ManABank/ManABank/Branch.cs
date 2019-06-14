using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    [Serializable()]
    class Branch
    {
        private String _id;
        private String _city;
        private String _country;
        private String _num_offices;
        private String _address;

        /**
         * Constructors
         */
        public Branch() : base()
        {
        }

        public Branch(String id, String city, String country) : base()
        {
            this.ID = id;
            this.City = city;
            this.Country = country;
        }

        public Branch(String id) : base()
        {
            this.ID = id;
        }

        /**
         * Getters and setters
         */
        public String ID
        {
            get { return _id; }
            set { _id = value; }
        }

        public String City
        {
            get { return _city; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("City field can’t be empty");
                    return;
                }
                _city = value;
            }
        }

        public String Country
        {
            get { return _country; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Country field can’t be empty");
                    return;
                }
                _country = value;
            }
        }

        public String NumOffices
        {
            get { return _num_offices; }
            set { _num_offices = value; }
        }

        public String Address
        {
            get { return _address; }
            set { _address = value; }
        }

        /**
         * Other methods
         */
        public override String ToString()
        {
            return _id + " - " + _city + ", " + _country;
        }
    }
}
