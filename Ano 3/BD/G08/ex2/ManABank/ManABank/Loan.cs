using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    class Loan
    {
        private String _id;
        private String _paid_amount;
        private String _total_amount;
        private String _interest_rate;
        private String _client_id;

        public string Id { get => _id; set => _id = value; }
        public string Paid_amount { get => _paid_amount; set => _paid_amount = value; }
        public string Total_amount { get => _total_amount; set => _total_amount = value; }
        public string Interest_rate { get => _interest_rate; set => _interest_rate = value; }
        public string Client_id { get => _client_id; set => _client_id = value; }

        public override string ToString()
        {
            return Id + " - " + Total_amount + " - " + Client_id;
        }
    }
}
