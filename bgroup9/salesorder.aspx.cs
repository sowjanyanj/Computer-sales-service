using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace bgroup9
{
    public partial class salesorder : System.Web.UI.Page
    {
        DataTable dt;
        Int64 totalprice;

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = new DataTable();
                dt.Columns.Add("itemid");
                dt.Columns.Add("brand");
                dt.Columns.Add("itemdesc");
                dt.Columns.Add("qty");
                dt.Columns.Add("price");
                dt.Columns.Add("total");
                Session["data"] = dt;
                genarate_auto_id();
            }
            lbltotal.Visible = false;
            lbldate.Text = DateTime.Today.ToString("MM/dd/yyyy");
        }
        private void genarate_auto_id()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from sorder", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar()) + 1101;
            int j = Convert.ToInt32(cmd.ExecuteScalar()) + 5101;
            Lblbillno.Text = i.ToString();
            lblcustid.Text = j.ToString();
        }
        public void dispdata()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from stock where Category=@Category", con);
            con.Open();

        }
        public void reset()
        {
            lblid.Text = "";
            lbldes.Text = "";
            lblbrand.Text = "";
            txtqty.Text = "";
            txtprice.Text = "";
            DropDownList2.Items.Add("--Select--");
            lbltotal.Text = "";

            lbltax.Text = "";
            lblgrandtotal.Text = "";
        }





        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    lblid.Text = GridView1.SelectedRow.Cells[1].Text;
        //    lbldes.Text = GridView1.SelectedRow.Cells[2].Text;

        //    lblbrand.Text = GridView1.SelectedRow.Cells[3].Text;

        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            dispdata();

        }

        protected void txtprice_TextChanged(object sender, EventArgs e)
        {
            if (txtqty.Text.Length > 0)
            {
                lbltotal.Text = (Convert.ToInt16(txtprice.Text) * Convert.ToInt16(txtqty.Text)).ToString();
            }
        }
        protected void btnbill_Click(object sender, EventArgs e)
        {

           
            dt = (DataTable)Session["data"];
            DataRow dr;
            dr = dt.NewRow();
            if (dt.Rows.Count > 0)
            {
                dr["itemid"] = lblid.Text;
                dr["brand"] = lblbrand.Text;
                dr["itemdesc"] = lbldes.Text;
                dr["qty"] = txtqty.Text;
                dr["price"] = txtprice.Text;
                totalprice = (Convert.ToInt16(txtprice.Text) * Convert.ToInt16(txtqty.Text));
                dr["total"] = totalprice.ToString();
                //TextBox1.Text = (Convert.ToInt64(TextBox1.Text) + Convert.ToInt64(lbltotal.Text)).ToString();
            }
            else
            {
                dr["itemid"] = lblid.Text;
                dr["brand"] = lblbrand.Text;
                dr["itemdesc"] = lbldes.Text;
                dr["qty"] = txtqty.Text;
                dr["price"] = txtprice.Text;
                totalprice = (Convert.ToInt64(txtprice.Text) * Convert.ToInt64(txtqty.Text));
                dr["total"] = totalprice.ToString();
            }
            dt.Rows.Add(dr);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            Session["buyitems"] = dt;
            lblid.Text = "";
            lbldes.Text = "";
            lblbrand.Text = "";
            txtqty.Text = "";
            txtprice.Text = "";
            TextBox1.Text = "0";
            for (int i = 0; i < GridView2.Rows.Count ; i++)
            {
                TextBox1.Text = Convert.ToString(double.Parse(TextBox1.Text) + double.Parse(GridView2.Rows[i].Cells[5].Text));
            }

            ////deductstock();
            reset();
            add();
            updatestock();
          
               
           
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblid.Text = GridView3.SelectedRow.Cells[1].Text;
            lbldes.Text = GridView3.SelectedRow.Cells[2].Text;

            lblbrand.Text = GridView3.SelectedRow.Cells[3].Text;
           txtprice.Text= GridView3.SelectedRow.Cells[5].Text;
        }



        private void add()
        {
            con.Open();

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Insert into salesorder values('" + Lblbillno.Text + "', '" + lbldate.Text + "',  '" + txtcno.Text + "',  '" + lblbrand.Text + "','" + lbldes.Text + "','" + txtqty.Text + "')";
            cmd2.ExecuteNonQuery();
            MessageBox.Show("Order Successfull");
        }
        private void updatestock()
        {
            //SqlCommand cmd3 = con.CreateCommand();
            ////cmd3.CommandText = "update stock set Quantity = Quantity- " + txtqty.Text + " where Brand='" +lblbrand.Text + "'";
            //cmd3.CommandText = "update stock set Quantity = Quantity- " + txtqty.Text + " where Brand='" + lblbrand.Text + "'";

            //cmd3.ExecuteNonQuery();
            SqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandText = "update stock set Quantity = Quantity- " + txtqty.Text + " where Brand='" + lblbrand.Text + "'";
            Response.Write("<script >alert('Product Returned successfully')</script>");
            cmd4.ExecuteNonQuery();

        }

    }
  
}