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
    
    public partial class sorder : System.Web.UI.Page
    {
        DataTable dt;
        Int64 totalprice;
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
            //lbltotal.Visible = false;
            lbldate.Text = DateTime.Today.ToString("MM/dd/yyyy");
        }
        private void genarate_auto_id()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from sorder", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar()) + 1101;
            int j = Convert.ToInt32(cmd.ExecuteScalar()) + 5101;
            lblbillno.Text = i.ToString();
            lblcustid.Text=j.ToString();
            
        }
        public void dispdata()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from stock where Category=@Category", con);
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dispdata();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtitemid.Text = GridView1.SelectedRow.Cells[1].Text;
            txtbrand.Text = GridView1.SelectedRow.Cells[2].Text;
            txtitemdes.Text = GridView1.SelectedRow.Cells[3].Text;
        }
        int grandtotal = 0, n = 0;

       

        protected void txtprice_TextChanged(object sender, EventArgs e)
        {
            if (txtqty.Text.Length > 0)
            {
                lbltotal.Text = (Convert.ToInt16(txtprice.Text) * Convert.ToInt16(txtqty.Text)).ToString();
            }
        }

        protected void txtgrandtotal_TextChanged(object sender, EventArgs e)
        {
            txtgrandtotal.Text= (Convert.ToInt16(txtgrandtotal.Text) + Convert.ToInt16(lbltotal.Text)).ToString();
        }
        
        protected void btnbill_Click(object sender, EventArgs e)
        {
            
            dt = (DataTable)Session["data"];
            DataRow dr;
            dr = dt.NewRow();
            if (dt.Rows.Count > 0)
            {
                dr["itemid"] = txtitemid.Text;
                dr["brand"] = txtbrand.Text;
                dr["itemdesc"] = txtitemdes.Text;
                dr["qty"] = txtqty.Text;
                dr["price"] = txtprice.Text;
                totalprice = (Convert.ToInt16(txtprice.Text) * Convert.ToInt16(txtqty.Text));
                dr["total"] = totalprice.ToString();
               
             


            }
            else
            {
                dr["itemid"] = txtitemid.Text;
                dr["brand"] = txtbrand.Text;
                dr["itemdesc"] = txtitemdes.Text;
                dr["qty"] = txtqty.Text;
                dr["price"] = txtprice.Text;
                totalprice = (Convert.ToInt64(txtprice.Text) * Convert.ToInt64(txtqty.Text));
                dr["total"] = totalprice.ToString();
            }
            dt.Rows.Add(dr);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            Session["buyitems"] = dt;
            txtitemid.Text = "";
            txtbrand.Text = "";
            txtitemdes.Text = "";
            txtqty.Text = "";
            txtprice.Text = "";
            //txtgrandtotal.Text = (Convert.ToInt16(txtgrandtotal.Text) + Convert.ToInt16(lbltotal.Text)).ToString();
           

        }
    }
}