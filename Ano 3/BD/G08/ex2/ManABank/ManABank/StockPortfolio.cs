using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    class StockPortfolio
    {
        private String _id;
        private String _risk;

        public string Id { get => _id; set => _id = value; }
        public string Risk { get => _risk; set => _risk = value; }

        public override string ToString()
        {
            return Id + " - " + Risk;
        }
    }
}
