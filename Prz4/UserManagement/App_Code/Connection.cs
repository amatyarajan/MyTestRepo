using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace UserManagement.App_Code
{
    public class Connection
    {
        public Connection()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public string GetConnectionString()
        {
            return @"integrated security=true; data source=.\sqlexpress; initial catalog=master";
        }

        public SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = GetConnectionString();
            con.Open();
            return con;
        }
    }
}
