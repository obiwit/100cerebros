using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    class Credit
    {
        private String account_id;
        private String comission;
        private String plafond;

        public string Account_id { get => account_id; set => account_id = value; }
        public string Comission { get => comission; set => comission = value; }
        public string Plafond { get => plafond; set => plafond = value; }

        public override string ToString()
        {
            return Account_id + " - " + Comission + " - " + Plafond;
        }
    }
}
