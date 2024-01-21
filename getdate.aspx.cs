using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class getdate : System.Web.UI.Page
    {
        DataTable dt;
        String sql;
        data obj=new data();
        public static int localprice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            grid();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql = "select * from orderTable where username='" + Session["user1"].ToString() + "'";
            SqlDataReader reader = obj.getsql(sql);
            if (reader.Read())
            {
                Response.Redirect("next.aspx");
            }
            else
            {
                DateTime dt = Convert.ToDateTime(TextBox1.Text);
                string pud = dt.ToString("yyyy/MM/dd hh:mm");
                sql = "insert into orderTable values('" + Session["user1"].ToString() + "','" + pud + "','" + TextBox2.Text + "'," + TextBox3.Text + ") ";
                obj.insupdel(sql);
                Response.Redirect("next.aspx");
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            int Qty =int.Parse(GridView1.Rows[e.NewEditIndex].Cells[2].Text);
            int Price = int.Parse(GridView1.Rows[e.NewEditIndex].Cells[4].Text);
            localprice = Price / Qty;
            grid();
        }
        private void grid()
        {
            sql = "select * from userTable where username='" + Session["user1"].ToString() + "'";
            dt = obj.gettable(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Item = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string Qty = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            int qty1 = int.Parse(Qty);
            int label1 = qty1 * localprice;

            sql = "update userTable set qty=" + Qty + ",price=" + label1.ToString() + " where item='" + Item + "'";
            obj.insupdel(sql);
            Response.Write("<script>alert('data has updated')</script>");
            GridView1.EditIndex = -1;
            grid();
        }
    }
}