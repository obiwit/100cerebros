using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    [Serializable()]
    class Card
    {
        private String _card_num;
        private String _name_on_card;
        private String _cvv;
        private String _validity;
        private String _account_id;

        /**
         * Constructors
         */
        public Card() : base()
        {
        }

        public Card(String CardNum, String NameOnCard, 
            String CardCVV, String Validity, String AccountID) : base()
        {
            this.CardNum = CardNum;
            this.NameOnCard = NameOnCard;
            this.CVV = CVV;
            this.Validity = Validity;
            this.AccountID = AccountID;
        }

        /**
         * Getters and setters
         */
        public String CardNum
        {
            get { return _card_num; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Card's number field can’t be empty");
                    return;
                }
                _card_num = value; }
        }

        public String NameOnCard
        {
            get { return _name_on_card; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("'Name On Card' field can’t be empty");
                    return;
                }
                _name_on_card = value;
            }
        }

        public String CVV
        {
            get { return _cvv; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Card's CVV field can’t be empty");
                    return;
                }
                _cvv = value;
            }
        }

        public String Validity
        {
            get { return _validity; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Card's validity field can’t be empty");
                    return;
                }
                _validity = value; }
        }

        public String AccountID
        {
            get { return _account_id; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Card's associated account field can’t be empty");
                    return;
                }
                _account_id = value; }
        }

        /**
         * Other methods
         */
        public override String ToString()
        {
            return _card_num + " - " + _name_on_card;
        }
    }
}
