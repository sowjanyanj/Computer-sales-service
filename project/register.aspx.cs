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
    public partial class register : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "" || txtphone.Text == "" || txtemail.Text == "" || txtdateob.Text == "" || txtpass.Text == "" || txtcpass.Text == "")
            {
                Response.Write("<script> alert('Enter all the fields!')</script>");
            }
            else
            {
                String ins = "Insert into register(uname,cno,email,dob,password,cpassword)values('" + txtusername.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtdateob.Text + "','" + txtpass.Text + "','" + txtcpass.Text + "')";
                SqlCommand com = new SqlCommand(ins, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script type=\"text/javascript\">alert('Registered Successfully!');</script>");
                Response.Redirect("homepage.aspx");
            }
        }

        }
    }
