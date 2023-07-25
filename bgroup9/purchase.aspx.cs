using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bgroup9
{
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        

        protected void button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchasereturn.aspx");
        }


        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("supplier.aspx");
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchaseorder.aspx");
        }
    }
}