using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

namespace Contacts
{

[Serializable()]
public class Contact
{
	private String _customerID;
	private String _companyName;
	private String _contactName;
	private String _address1;
	private String _address2;
	private String _city;
	private String _state;
	private String _zip;
	private String _country;
	private String _tel;

	private String _fax;
	public String CustomerID {
		get { return _customerID; }
		set { _customerID = value; }
	}


	public String CompanyName {
		get { return _companyName; }
		set {
			if (value == null | String.IsNullOrEmpty(value)) {
				throw new Exception("Company Name field can’t be empty");
				return;
			}
			_companyName = value;
		}
	}

	public String ContactName {
		get { return _contactName; }
		set { _contactName = value; }
	}

	public String Address1 {
		get { return _address1; }
		set { _address1 = value; }
	}

	public String Address2 {
		get { return _address2; }
		set { _address2 = value; }
	}

	public String City {
		get { return _city; }
		set { _city = value; }
	}

	public String State {
		get { return _state; }
		set { _state = value; }
	}

	public String ZIP {
		get { return _zip; }
		set { _zip = value; }
	}

	public String Country {
		get { return _country; }
		set { _country = value; }
	}

	public String tel {
		get { return _tel; }
		set { _tel = value; }
	}

	public String FAX {
		get { return _fax; }
		set { _fax = value; }
	}


	public override String ToString()
	{
		return _customerID + "   " + _companyName;
	}

	public Contact() : base()
	{
	}

	public Contact(String CompanyName, String LastName, String FirstName) : base()
	{
		this.ContactName = LastName + ", " + FirstName;
		this.CompanyName = CompanyName;
	}

	public Contact(String CompanyName) : base()
	{
		this.CompanyName = CompanyName;
	}
}
    }

