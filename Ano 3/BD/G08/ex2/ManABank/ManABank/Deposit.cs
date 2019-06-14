using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    class Deposit
    {
        private String _id;
        private String _payout_frequency;

        public string Id { get => _id; set => _id = value; }
        public string Payout_frequency { get => _payout_frequency; set => _payout_frequency = value; }

        public override string ToString()
        {
            return Id + " - " + Payout_frequency;
        }
    }
}
