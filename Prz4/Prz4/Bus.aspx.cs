using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserManagement;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using UserManagement.App_Code;
using System.Web.Security;


namespace Prz4
{
    public partial class Bus : System.Web.UI.Page
    {
        public SqlConnection con = new Connection().GetConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (Authenticate(UserName.Text, UserPass.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(UserName.Text, chkboxPersist.Checked);
            }
            else
            {
                Msg.Text = "Invalid User Name and/or Password";
            }

        }

        protected void Login_Cancel(object sender, EventArgs e)
        {

        }

        private bool Authenticate(string Username, string Password)
        {
           
            SqlCommand command = new SqlCommand();

            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "CheckPassword5";
            command.Connection = con;

            command.Parameters.AddWithValue("@Email", Username);
            command.Parameters.AddWithValue("@Password", Password);

            int userId = Convert.ToInt32(command.ExecuteScalar());
            return userId==1;
        }
    }
}