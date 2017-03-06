using System.Collections.Generic;
using System.Data.SqlClient;
using System;
using System.Data;

namespace Cabrador
{
    public class Customer
    {
        private int _id;
        private string _name;
        private string _photo;
        private string _email;
        private string _password;


        public Customer(string Name, string Photo, string Email, string Password, int Id = 0)
        {
            _id = Id;
            _name = Name;
            _photo = Photo;
            _email = Email;
            _password = Password;
        }

        public int GetId()
        {
            return _id;
        }

        public string GetName()
        {
            return _name;
        }

        public string GetPhoto()
        {
            return _photo;
        }

        public string GetEmail()
        {
            return _email;
        }

        public string GetPassword()
        {
            return _password;
        }


        public override bool Equals(System.Object otherCustomer)
        {
            if(!(otherCustomer is Customer))
            {
                return false;
            }
            else
            {
                Customer newCustomer = (Customer) otherCustomer;
                bool idEquality = this.GetId() == newCustomer.GetId();
                bool nameEquality = this.GetName() == newCustomer.GetName();
                bool photoEquality = this.GetPhoto() == newCustomer.GetPhoto();
                bool emailEquality = this.GetEmail() == newCustomer.GetEmail();
                bool passwordEquality = this.GetPassword() == newCustomer.GetPassword();
                return (idEquality && nameEquality && photoEquality && emailEquality && passwordEquality);
            }
        }

        public static List<Customer> GetAll()
        {
            List<Customer> allCustomers = new List<Customer>{};

            SqlConnection conn = DB.Connection();
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM customers;", conn);
            SqlDataReader rdr = cmd.ExecuteReader();

            while(rdr.Read())
            {
                int customerId = rdr.GetInt32(0);
                string customerName = rdr.GetString(1);
                string customerPhoto = rdr.GetString(2);
                string customerEmail = rdr.GetString(3);
                string customerPassword = rdr.GetString(4);
                Customer newCustomer = new Customer(customerName, customerPhoto, customerEmail, customerPassword, customerId);
                allCustomers.Add(newCustomer);
            }

            if (rdr != null)
            {
                rdr.Close();
            }
            if (conn != null)
            {
                conn.Close();
            }
            return allCustomers;
        }

        public void Save()
        {
            SqlConnection conn = DB.Connection();
            conn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO customers (name, photo, email, password) OUTPUT INSERTED.id VALUES (@CustomerName, @CustomerPhoto, @CustomerEmail, @CustomerPassword);", conn);

            cmd.Parameters.Add(new SqlParameter("@CustomerName", this.GetName()));
            cmd.Parameters.Add(new SqlParameter("@CustomerPhoto", this.GetPhoto()));
            cmd.Parameters.Add(new SqlParameter("@CustomerEmail", this.GetEmail()));
            cmd.Parameters.Add(new SqlParameter("@CustomerPassword", this.GetPassword()));

            SqlDataReader rdr = cmd.ExecuteReader();

            while(rdr.Read())
            {
                this._id = rdr.GetInt32(0);
            }
            if (rdr != null)
            {
                rdr.Close();
            }
            if (conn != null)
            {
                conn.Close();
            }
        }

        public static Customer Find(int id)
        {
            SqlConnection conn = DB.Connection();
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM customers WHERE id = @CustomerId;", conn);
            SqlParameter customerIdParameter = new SqlParameter();
            customerIdParameter.ParameterName = "@CustomerId";
            customerIdParameter.Value = id.ToString();
            cmd.Parameters.Add(customerIdParameter);
            SqlDataReader rdr = cmd.ExecuteReader();

            int foundCustomerId = 0;
            string foundCustomerName = null;
            string foundCustomerPhoto = null;
            string foundCustomerEmail = null;
            string foundCustomerPassword = null;

            while(rdr.Read())
            {
                foundCustomerId = rdr.GetInt32(0);
                foundCustomerName = rdr.GetString(1);
                foundCustomerPhoto = rdr.GetString(2);
                foundCustomerEmail = rdr.GetString(3);
                foundCustomerPassword = rdr.GetString(4);
            }
            Customer foundCustomer = new Customer(foundCustomerName, foundCustomerPhoto, foundCustomerEmail, foundCustomerPassword, foundCustomerId);

            if (rdr != null)
            {
                rdr.Close();
            }
            if (conn != null)
            {
                conn.Close();
            }
            return foundCustomer;
        }

        public static void Delete(int id)
        {
            SqlConnection conn = DB.Connection();
            conn.Open();

            SqlCommand cmd = new SqlCommand("DELETE FROM customers WHERE id=@CustomerId;", conn);
            cmd.Parameters.Add(new SqlParameter("@CustomerId", id));

            cmd.ExecuteNonQuery();

            if (conn != null)
            {
                conn.Close();
            }
        }



        public static void DeleteAll()
        {
            SqlConnection conn = DB.Connection();
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM customers;", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}