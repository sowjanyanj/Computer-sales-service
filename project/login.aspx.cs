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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from register where uname =@uname and password=@password", con);
            cmd.Parameters.AddWithValue("@uname", txtname.Text);
            cmd.Parameters.AddWithValue("@password", txtpass.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Login Successful!');</script>");
                Response.Redirect("homepage.aspx");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Invalid credentials');</script>");
            }
        }

        protected void LinkButtonpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("passwordreset.aspx");
        }
    }
}

