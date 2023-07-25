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
    public partial class purchasereturn : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            dispdata();
        }
        
    
    public void dispdata()
    {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from purchaseorder where PurchaseOrderNo=@PurchaseOrderNo", con);

            
            con.Open();



            
        }

       

        protected void txtrefresh_Click(object sender, EventArgs e)
        {
            dispdata();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            con.Open();
          
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Insert into preturn values('" + DropDownList1.Text + "', '" + txtpbillno.Text + "', '" + lblodate.Text + "', '" + TextBox1.Text + "', '" + lblQorder.Text + "', '" + txtqreturned.Text + "', '" + lblitemdes.Text + "', '" + lblbrand.Text + "')";
            cmd2.ExecuteNonQuery();
            

            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandText = "update stock set Quantity = Quantity- "+txtqreturned.Text+" where Category='"+Labelcat.Text + "'";
            Response.Write("<script >alert('Product Returned successfully')</script>");
            cmd3.ExecuteNonQuery();


            SqlCommand cmd4 = con.CreateCommand();
            cmd3.CommandText = "update purchaseorder set Quantity = Quantity- " + txtqreturned.Text + " where Category='" + Labelcat.Text + "'";
            Response.Write("<script >alert('Product Returned successfully')</script>");
            cmd3.ExecuteNonQuery();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblodate.Text = GridView1.SelectedRow.Cells[4].Text;
            lblQorder.Text = GridView1.SelectedRow.Cells[9].Text;
            lblitemdes.Text = GridView1.SelectedRow.Cells[8].Text;
            lblbrand.Text = GridView1.SelectedRow.Cells[7].Text;
            Labelcat.Text = GridView1.SelectedRow.Cells[6].Text;
        }

       
    }

   
}
