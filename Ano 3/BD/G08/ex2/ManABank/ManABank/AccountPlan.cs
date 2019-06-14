using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    [Serializable()]
    class AccountPlan
    {
        private String _plan_code;
        private String _benefits_description;

        /**
         * Constructors
         */
        public AccountPlan() : base()
        {
        }

        public AccountPlan(String PlanCode, String BenefitsDescription) : base()
        {
            this.PlanCode = PlanCode;
            this.BenefitsDescription = BenefitsDescription;
        }

        /**
         * Getters and setters
         */
        public String PlanCode
        {
            get { return _plan_code; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("AccountPlan's number field can’t be empty");
                    return;
                }
                _plan_code = value;
            }
        }

        public String BenefitsDescription
        {
            get { return _benefits_description; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("'Name On AccountPlan' field can’t be empty");
                    return;
                }
                _benefits_description = value;
            }
        }

        /**
         * Other methods
         */
        public override String ToString()
        {
            return _plan_code + " - " + _benefits_description;
        }
    }
}
