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
    public partial class customerdetail : System.Web.UI.Page
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

            SqlCommand cmd = new SqlCommand("select count(*) from customerdetails", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar()) + 201;
            txtcid.Text = i.ToString();
        }

        public void dispdata()
        {

            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from customerdetails", con);
            DataTable dt = new DataTable();
            SQLAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtcid.Text = GridView1.SelectedRow.Cells[1].Text;
            txtcname.Text = GridView1.SelectedRow.Cells[2].Text;

            txtcaddress.Text = GridView1.SelectedRow.Cells[3].Text;
            txtcemail.Text = GridView1.SelectedRow.Cells[4].Text;
            txtccontact.Text = GridView1.SelectedRow.Cells[5].Text;


        }

        protected void btncadd_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtcid.Text == "" || txtcname.Text == "" || txtcaddress.Text == "" || txtcemail.Text == "" || txtccontact.Text == "")

                    Response.Write("<script >alert(' Please enter all the field')</script>");


                else
                {

                    String ins = "Insert into customerdetails(CId,CName,CAddress,CEmail,CPhone)values('" + txtcid.Text + "','" + txtcname.Text + "','" + txtcaddress.Text + "','" + txtcemail.Text + "','" + txtccontact.Text + "')";
                    SqlCommand com = new SqlCommand(ins, con);
                    con.Open();
                    com.ExecuteNonQuery();
                    Response.Write("<script >alert('Customer Detail Added Successfully!')</script>");
                    dispdata();
                    txtcname.Text = "";
                    txtcaddress.Text = "";
                    txtcemail.Text = "";
                    txtccontact.Text = "";

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

        protected void btncupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update customerdetails set CName=@name,CAddress=@address,CEmail=@email,CPhone=@phone where CId=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", txtcid.Text);
            cmd.Parameters.AddWithValue("@name", txtcname.Text);
            cmd.Parameters.AddWithValue("@address", txtcaddress.Text);
            cmd.Parameters.AddWithValue("@email", txtcemail.Text);
            cmd.Parameters.AddWithValue("@phone", txtccontact.Text);
            cmd.ExecuteNonQuery();

            Response.Write("<script >alert('Record Updated Successfully!')</script>");
            con.Close();
        }

        protected void btncremove_Click(object sender, EventArgs e)
        { 

            SqlCommand cmd = new SqlCommand("Delete from  customerdetails where CId='" + txtcid.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script >alert('Deleted sucessfully')</script>");
            con.Close();
        }

        protected void btncclear_Click(object sender, EventArgs e)
        {
            txtcname.Text = "";
            txtcaddress.Text = "";
            txtcemail.Text = "";
            txtccontact.Text = "";
        }
    }
}