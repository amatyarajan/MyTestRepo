using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prz4
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divThankYou.Visible = false;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            buttonbox.Visible = false;
            divThankYou.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            lblcmt.Text = "Response has been saved. Thank you for your comment.";
        //    int milliseconds = 3000;
         //   Thread.Sleep(milliseconds);
            Response.Redirect("Contact.aspx");
            
        }
    }
}