using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UserManagement;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using UserManagement.App_Code;
using System.Xml.Serialization;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Configuration;
using System.Net.Security;
using System.Net;
using System.IO;

namespace UserManagement.App_Code
{ 
    public class DAL
    {
  
    public SqlConnection con = new Connection().GetConnection();

        public DAL()
        {

        }

        public string AddUser(UserBE obj)
        {
          
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "sp_insertUserDetail";

            command.Connection = con;

            command.Parameters.AddWithValue("@Name", obj.Name);
            command.Parameters.AddWithValue("@Age", obj.Age);
            command.Parameters.AddWithValue("@Email", obj.Email);
            command.Parameters.AddWithValue("@Password", obj.Password);
            command.Parameters.AddWithValue("@Country", obj.Country);
            command.Parameters.AddWithValue("@Sex", obj.Gender);

            command.ExecuteNonQuery();
            con.Close();

            return "User Saved";
        }


        public bool verifyUser(UserBE objProp)
        {
            int userId = 0;
            SqlCommand command = new SqlCommand();

            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "CheckPassword5";
            command.Connection = con;

            command.Parameters.AddWithValue("@Email", objProp.Email);
            command.Parameters.AddWithValue("@Password", objProp.Password);

            userId = Convert.ToInt32(command.ExecuteScalar());
            con.Close();
            return userId == 1;

        }

      
    }
}
