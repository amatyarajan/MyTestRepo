using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prz4
{
    public partial class Flights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  flight_detail.Visible = false;
        }

        protected void oneway_click(object sender, EventArgs e)
        {
         //   flight_detail.Visible = true;
         //   Arrival_div.Visible = false;
        }

        protected void round_click(object sender, EventArgs e)
        {
            //flight_detail.Visible = true;
            //Arrival_div.Visible = true; 
        }
    }
}