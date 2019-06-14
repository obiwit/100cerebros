using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManABank
{
    [Serializable()]
    class Employee
    {
        private String _employee_num;
        private String _ccID;
        private String _email;
        private String _name;
        private String _salary;
        private String _healthCare;
        private String _dateBirth;
        private String _office;
        private String _supervisor;
        private String _branch;


        /**
         * Constructors
         */
        public Employee() { }

        public Employee(string employee_num, string ccID, string email, string name, string salary, string healthCare, string dateBirth, string office, string supervisor, string branch)
        {
            Employee_num = employee_num;
            CcID = ccID;
            Email = email;
            Name = name;
            Salary = salary;
            HealthCare = healthCare;
            DateBirth = dateBirth;
            Office = office;
            Supervisor = supervisor;
            Branch = branch;
        }

        /**
         * Getters and setters
         */
        public string Employee_num { get => _employee_num; set => _employee_num = value; }
        public string CcID { get => _ccID; set => _ccID = value; }
        public string Email { get => _email; set => _email = value; }
        public string Name { get => _name; set => _name = value; }
        public string Salary { get => _salary; set => _salary = value; }
        public string HealthCare { get => _healthCare; set => _healthCare = value; }
        public string DateBirth { get => _dateBirth; set => _dateBirth = value; }
        public string Office { get => _office; set => _office = value; }
        public string Supervisor { get => _supervisor; set => _supervisor = value; }
        public string Branch { get => _branch; set => _branch = value; }

        override
        public string ToString() { return CcID + " - " + Email; }

    }
}
