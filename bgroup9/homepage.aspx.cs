using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace bgroup9
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btsales_Click(object sender, EventArgs e)
        {
            Response.Redirect("sales.aspx");
        }

        protected void btpurchase_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchase.aspx");
        }

        protected void btnstock_Click(object sender, EventArgs e)
        {
            Response.Redirect("inventory.aspx");
        }

        protected void btnreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("report.aspx");
        }

        protected void btnaddu_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}