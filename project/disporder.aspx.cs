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
    public partial class disporder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            dispdata();
        }
        public void dispdata()
        {

            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from purchaseorder", con);
            DataTable dt = new DataTable();
            SQLAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
    }
}