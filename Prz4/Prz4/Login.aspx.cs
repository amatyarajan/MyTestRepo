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
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;

namespace Prz4
{
    public class Response
    {
        public int status { get; set; }
        public string result { get; set; }
    }
    public partial class Login : System.Web.UI.Page
    {
      //  public SqlConnection con = new Connection().GetConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            UserBE objProp = new UserBE();

            objProp.Email = txtusername.Text;
            objProp.Password = txtpassword.Text;

            DAL signup = new DAL();

            /* Verifying the user via checking the database
            if (signup.verifyUser(objProp))
            {
                Session["Username"] = objProp.Email;
                Response.Redirect("Deals.aspx");
            }
            else
                lblOutput.Text = "Invalid Credentials";
             */

            /*Comparing the values to a web Api with the database to make sure username password is correct*/
            string postData = "username=" + objProp.Email + "&password=" + objProp.Password;
        HttpClient client = new HttpClient();
        client.BaseAddress = new Uri("http://localhost:59530/api/Home/GetInfo?");

        // Add an Accept header for JSON format.
        client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage response = client.GetAsync("http://localhost:59530/api/Home/GetInfo?" + postData).Result;

            if (response.IsSuccessStatusCode)
            {
              
                var result = response.Content.ReadAsStringAsync().Result;
                Response rs = JsonConvert.DeserializeObject<Response>(result);
                if(rs.status==200)
                {
                    Session["Username"] = objProp.Email;
                    Response.Redirect("Deals.aspx");

                }
                else
                lblOutput.Text ="Username password is not valid";
              
                //  lblOutput.Text = result;
                //Console.WriteLine(result);
            }
            else
            {
                lblOutput.Text = "Could not connect the database";
            }


        }


                            
            /*Comparing password hardcoded in class file
            authenticator auth = new authenticator();
            var isvalid = auth.ValidateCredentials(txtusername.Text, txtpassword.Text);

            if (isvalid==true)
            {
                Session["Username"] = txtusername.Text;
                Response.Redirect("Deals.aspx");
            }
            else
                lblOutput.Text = "Invalid Credentials";
             */


            protected void Button2_Click(object sender, EventArgs e)
        {
            lblOutput.Text = "Incorrect Credentials";
            Response.Redirect("Login.aspx");
        }



    }
}