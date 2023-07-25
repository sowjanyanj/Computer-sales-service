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
    public partial class purchaseorder : System.Web.UI.Page
    {
        DataTable dt;
        //Int64 totalprice;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
        
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            
                if (!IsPostBack)
                {
                    dt = new DataTable();
                    dt.Columns.Add("itemid");
                    dt.Columns.Add("brand");
                    dt.Columns.Add("itemdesc");
                    dt.Columns.Add("qty");
                    dt.Columns.Add("price");
                    //dt.Columns.Add("total");
                    Session["data"] = dt;
                    genarate_auto_id();
                }
                

            

            lbldate.Text = DateTime.Now.ToShortDateString();


        }





        private void genarate_auto_id()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from porder", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar()) + 501;
            //int j = Convert.ToInt32(cmd.ExecuteScalar()) + 201;
            txtpno.Text = i.ToString();
            //txtitemid.Text = j.ToString();

        }
        private void clear()
        {
            supplierDropDownList.SelectedIndex = 0;
            categorydropdown.SelectedIndex = 0;
            txtitemdes.Text = "";
            txtbrand.Text = "";
            txtduedate.Text = "";
            txtquantity.Text = "";
        }

        protected void btnorder_Click(object sender, EventArgs e)
        {

            con.Open();
            int i;
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from stock where Category='" + categorydropdown.Text + "'";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            i = Convert.ToInt32(dt1.Rows.Count.ToString());
            if (i == 0)
            {


                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "Insert into porder values('" + txtpno.Text + "', '" + txtitemid.Text + "', '" + supplierDropDownList.Text + "', '" + lbldate.Text + "', '" + txtduedate.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "','" + payment.Text + "')";
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "Insert into stock values('" + txtitemid.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "')";
                cmd3.ExecuteNonQuery();
            }
            else
            {

                SqlCommand cmd4 = con.CreateCommand();
                cmd4.CommandType = CommandType.Text;
                cmd4.CommandText = "Insert into porder values('" + txtpno.Text + "', '" + txtitemid.Text + "', '" + supplierDropDownList.Text + "', '" + lbldate.Text + "', '" + txtduedate.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "','" + payment.Text + "')";
                cmd4.ExecuteNonQuery();

                SqlCommand cmd5 = con.CreateCommand();
                cmd5.CommandType = CommandType.Text;
                cmd5.CommandText = "update stock set Quantity = Quantity+ '" + this.txtquantity.Text + " ' where [Category]='" + this.categorydropdown.Text + "';";
                cmd5.ExecuteNonQuery();
            }



            Response.Write("<script >alert('purchase order detail added successfully')</script>");
            //Response.Redirect("~/WebForm1.aspx");
            clear();
            genarate_auto_id();

        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            supplierDropDownList.SelectedIndex = 0;
            categorydropdown.SelectedIndex = 0;
            txtitemdes.Text = "";
            txtbrand.Text = "";
            txtduedate.Text = "";
            txtquantity.Text = "";
        }
        private void add()
        {

            con.Open();
            int i;
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from stock where Category='" + categorydropdown.Text + "'";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            i = Convert.ToInt32(dt1.Rows.Count.ToString());
            if (i == 0)
            {


                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "Insert into porder values('" + txtpno.Text + "', '" + txtitemid.Text + "', '" + supplierDropDownList.Text + "', '" + lbldate.Text + "', '" + txtduedate.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "','" + payment.Text + "')";
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "Insert into stock values('" + txtitemid.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "')";
                cmd3.ExecuteNonQuery();
            }
            else
            {

                SqlCommand cmd4 = con.CreateCommand();
                cmd4.CommandType = CommandType.Text;
                cmd4.CommandText = "Insert into porder values('" + txtpno.Text + "', '" + txtitemid.Text + "', '" + supplierDropDownList.Text + "', '" + lbldate.Text + "', '" + txtduedate.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "','" + payment.Text + "')";
                cmd4.ExecuteNonQuery();

                SqlCommand cmd5 = con.CreateCommand();
                cmd5.CommandType = CommandType.Text;
                cmd5.CommandText = "update stock set Quantity = Quantity+ '" + this.txtquantity.Text + " ' where [Category]='" + this.categorydropdown.Text + "';";
                cmd5.ExecuteNonQuery();
            }



            Response.Write("<script >alert('purchase order detail added successfully')</script>");
            //Response.Redirect("~/WebForm1.aspx");
            clear();
            //genarate_auto_id();

        }

        protected void btndisplay_Click(object sender, EventArgs e)
        {
            con.Open();
            int i;
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from stock where Category='" + categorydropdown.Text + "'";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            i = Convert.ToInt32(dt1.Rows.Count.ToString());
            if (i == 0)
            {


                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "Insert into purchaseorder values('" + txtpno.Text + "', '" + txtitemid.Text + "', '" + supplierDropDownList.Text + "', '" + lbldate.Text + "', '" + txtduedate.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "','" + payment.Text + "')";
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "Insert into stock values('" + categorydropdown.Text + "', '" + txtquantity.Text + "')";
                cmd3.ExecuteNonQuery();
            }
            else
            {

                SqlCommand cmd4 = con.CreateCommand();
                cmd4.CommandType = CommandType.Text;
                cmd4.CommandText = "Insert into purchaseorder values('" + txtpno.Text + "', '" + txtitemid.Text + "', '" + supplierDropDownList.Text + "', '" + lbldate.Text + "', '" + txtduedate.Text + "', '" + categorydropdown.Text + "', '" + txtitemdes.Text + "','" + txtbrand.Text + "','" + txtquantity.Text + "','" + payment.Text + "')";
                cmd4.ExecuteNonQuery();

                SqlCommand cmd5 = con.CreateCommand();
                cmd5.CommandType = CommandType.Text;
                cmd5.CommandText = "update stock set Quantity = Quantity+ '" + this.txtquantity.Text + " ' where [Category]='" + this.categorydropdown.Text + "';";
                cmd5.ExecuteNonQuery();
            }



            Response.Write("<script >alert('purchase order detail added successfully')</script>");
            //Response.Redirect("~/WebForm1.aspx");
            clear();
            genarate_auto_id();
        }




        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            DateTime dt1 = DateTime.Now;
            DateTime dt2 = Convert.ToDateTime(Calendar1.SelectedDate.ToString());
            DateTime dt3 = DateTime.Now.AddDays(15);
            if (dt2 < dt1)
            {
                Response.Write("<script >alert(' Due date must be within 15 days')</script");
            }
            else
            {
                txtduedate.Text = Calendar1.SelectedDate.ToShortDateString();
            }
            if (txtduedate.Text == "")
            {
                Calendar1.Visible = true;

            }
            else
            {
                Calendar1.Visible = false;
            }

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

            dt = (DataTable)Session["data"];
            DataRow dr;
            dr = dt.NewRow();
            if (dt.Rows.Count > 0)
            {
                dr["itemid"] = txtitemid.Text;
                dr["brand"] = txtbrand.Text;
                dr["itemdesc"] = txtitemdes.Text;
                dr["qty"] = txtquantity.Text;
                //dr["price"] = txtprice.Text;
                //totalprice = (Convert.ToInt16(txtprice.Text) * Convert.ToInt16(txtqty.Text));
                //dr["total"] = totalprice.ToString();
                //TextBox1.Text = (Convert.ToInt64(TextBox1.Text) + Convert.ToInt64(lbltotal.Text)).ToString();
            }
            else
            {
                dr["itemid"] = txtitemid.Text;
                dr["brand"] = txtbrand.Text;
                dr["itemdesc"] = txtitemdes.Text;
                dr["qty"] = txtquantity.Text;
            }
            dt.Rows.Add(dr);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            Session["buyitems"] = dt;
           txtitemid.Text = "";
            txtbrand.Text = "";
            txtitemdes.Text = "";
            txtquantity.Text = "";
            //genarate_auto_id();
            add();
           

        }
    }
}

