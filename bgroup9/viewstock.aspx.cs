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
    public partial class viewstock : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            dispdata(); 
        }
        public void dispdata()
        {

            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from stock", con);
            DataTable dt = new DataTable();
            SQLAdapter.Fill(dt);
            GridViewstock.DataSource = dt;
            GridViewstock.DataBind();


        }

        protected void GridViewstock_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblid.Text=GridViewstock.SelectedRow.Cells[1].Text;
            Category.Text = GridViewstock.SelectedRow.Cells[2].Text;
            lblbrand.Text = GridViewstock.SelectedRow.Cells[3].Text;
            lbldesc.Text = GridViewstock.SelectedRow.Cells[4].Text;
        }

        protected void btnprice_Click(object sender, EventArgs e)
        {
            //con.Open();

            //SqlCommand cmd2 = con.CreateCommand();
            //cmd2.CommandType = CommandType.Text;
            //cmd2.CommandText = "update stock set UnitPrice = UnitPrice " + txtprice.Text + " where Category='" + lblcat.Text + "'";
            //cmd2.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand("update stock set UnitPrice=@UnitPrice where Category=@Category", con);
            con.Open();
            cmd.Parameters.AddWithValue("@Category", Category.Text);
            cmd.Parameters.AddWithValue("@UnitPrice", UnitPrice.Text);
            
            cmd.ExecuteNonQuery();

            Response.Write("<script >alert('Record Updated Successfully!')</script>");
            con.Close();
        }

        protected void btnrefresh_Click(object sender, EventArgs e)
        {
            dispdata();
        }
    }
}