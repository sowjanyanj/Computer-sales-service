using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace bgroup9
{
    public partial class category : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                genarate_auto_id();
               
            }
            dispdata();


        }
        private void genarate_auto_id()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from category1", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar()) + 01;
            txtcid.Text = i.ToString();
        }


        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
              

                if (txtcid.Text == "" || txtcname.Text == "" || txtgst.Text == "")
                
                    Response.Write("<script >alert(' Please enter all the field')</script>");
               
                else
                {
                    
                    String ins = "Insert into category1(cid,cname,gst)values('" + txtcid.Text + "','" + txtcname.Text + "','" + txtgst.Text + "')";
                    SqlCommand com = new SqlCommand(ins, con);
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script >alert('Category added Successfully!')</script>");
                    //Response.Redirect("~/WebForm1.aspx");
                    dispdata();
                    txtcname.Text = "";
                   txtgst.Text = "";
                 
                    genarate_auto_id();

                }
            }
            catch (SqlException ex)
            {
                if (ex.Number == 2627)
                {
                    Response.Write("<script >alert('The same value already exists-change some data!')</script>");
                }
            }
            finally
            {
                con.Close();
            }


        }

            
        

        protected void btnremove_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Delete from  category1 where cid='" + txtcid.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script >alert('deleted sucess fully')</script>");
            con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update category1 set cname=@name,gst=@cgst where cid=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", txtcid.Text);
            cmd.Parameters.AddWithValue("@name", txtcname.Text);
            cmd.Parameters.AddWithValue("@cgst", txtgst.Text);
            cmd.ExecuteNonQuery();

            Response.Write("<script >alert('Record Updated Successfully!')</script>");
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtcname.Text = "";
            txtgst.Text = "";
        }

        protected void btnrefresh_Click(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");*/
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from category1", con);
            DataTable dt = new DataTable();
            SQLAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtcid.Text = GridView1.SelectedRow.Cells[1].Text;
            txtcname.Text = GridView1.SelectedRow.Cells[2].Text;
            txtgst.Text = GridView1.SelectedRow.Cells[3].Text;
        }
        public void dispdata()
        {

            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from category1", con);
            DataTable dt = new DataTable();
            SQLAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
    }
}




    