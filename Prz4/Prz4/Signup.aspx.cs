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




namespace Prz4
{
    public partial class Signup : System.Web.UI.Page
    {
        
        public SqlConnection con = new Connection().GetConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
             LoadEmployeeList();

           

            //    BinData();
        }

        private void BinData()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("Data.xml"));

           GridView1.DataSource = ds;
           GridView1.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            UserBE objProp = new UserBE();
          
            objProp.Name = txtName.Text;
            try
            {
                objProp.Age = Convert.ToInt16(textAge.Text);
            }
           
            catch
            {
                lblAge.Text = "Need Age in proper format";

            }
            
            objProp.Email = textEmail.Text;
            objProp.Password = textPassword.Text;
          

            if (RadioButton1.Checked)
            {
                objProp.Gender = "Male";
            }
            else
            {
               objProp.Gender = "Female";

            }

            objProp.Country= DropDownList1.SelectedItem.Value;

            DAL useradd = new DAL();
            useradd.AddUser(objProp);
            LoadEmployeeList();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          Response.Redirect("Signup.aspx");
        }

        public void LoadEmployeeList()
        {

            //open connection
            //create sql command
            string query = "Select * from UserDetail";
            SqlCommand cmd = new SqlCommand(query, con);
            //execute sql command
            SqlDataReader reader = cmd.ExecuteReader();
            //bind reader to gridview
            GridView1.DataSource = reader;
            GridView1.DataBind();

        }


        /*
         *  
       

    */
    }
}