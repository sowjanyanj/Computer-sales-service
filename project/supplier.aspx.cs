using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;


namespace bgroup9
{
    public partial class supplier : System.Web.UI.Page
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

            SqlCommand cmd = new SqlCommand("select count(*) from supplierdetails", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar()) + 101;
            txtsid.Text = i.ToString();
        }


        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtsid.Text == "" || txtname.Text == "" || txtsaddress.Text == "" || txtsemail.Text == "" || txtsphone.Text == "")

                    Response.Write("<script >alert(' Please enter all the field')</script>");


                else
                {

                    String ins = "Insert into supplierdetails(SId,Sname,SAddress,SEmail,SPhone)values('" + txtsid.Text + "','" + txtname.Text + "','" + txtsaddress.Text + "','" + txtsemail.Text + "','" + txtsphone.Text + "')";
                    SqlCommand com = new SqlCommand(ins, con);
                    con.Open();
                    com.ExecuteNonQuery();
                    //Response.Write("<script >alert('Supplier Detail Added Successfully!')</script>");
                    MessageBox.Show("Supplier Detail Added Successfully!");
                    dispdata();
                    txtname.Text = "";
                    txtsaddress.Text = "";
                    txtsemail.Text = "";
                    txtsphone.Text = "";
        
                    genarate_auto_id();



                    //Response.Redirect("~/WebForm1.aspx");
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
            



        protected void btnsave_Click(object sender, EventArgs e)
        {
            /*// SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
             SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from supplierdetails", con);
             DataTable dt = new DataTable();
             SQLAdapter.Fill(dt);
             GridView1.DataSource = dt;
             GridView1.DataBind();*/
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
                SqlCommand cmd = new SqlCommand("update supplierdetails set SName=@name,SAddress=@address,SEmail=@email,SPhone=@phone where SId=@id", con);
                con.Open();
                cmd.Parameters.AddWithValue("@id", txtsid.Text);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@address", txtsaddress.Text);
                cmd.Parameters.AddWithValue("@email", txtsemail.Text);
                cmd.Parameters.AddWithValue("@phone", txtsphone.Text);
                cmd.ExecuteNonQuery();

                Response.Write("<script >alert('Record Updated Successfully!')</script>");
                con.Close();
            /*SqlCommand cmd = new SqlCommand("Delete from  supplierdetails where SId='" + txtsid.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script >alert('deleted sucess fully')</script>");
            con.Close();*/


        }

        protected void btnremove_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Delete from  supplierdetails where SId='" + txtsid.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script >alert('deleted sucess fully')</script>");
            con.Close();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtsaddress.Text = "";
            txtsemail.Text = "";
            txtsphone.Text = "";
        }
   
        public void dispdata()
        {
          
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from supplierdetails", con);
            DataTable dt = new DataTable();
            SQLAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtsid.Text = GridView1.SelectedRow.Cells[1].Text;
            txtname.Text = GridView1.SelectedRow.Cells[2].Text;

            txtsaddress.Text = GridView1.SelectedRow.Cells[3].Text;
            txtsemail.Text = GridView1.SelectedRow.Cells[4].Text;
            txtsphone.Text = GridView1.SelectedRow.Cells[5].Text;
        }

        protected void BACK_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchase.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchaseorder.aspx");
        }

        protected void txtsid_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }



    

    

     