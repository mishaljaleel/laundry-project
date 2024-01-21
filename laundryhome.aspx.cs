using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class laundryhome : System.Web.UI.Page
    {
        DataTable dt;
        data obj = new data();
        string sql;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            sql = "select items,drycleaning,washing,ironing from adminTable where items='" + Session["user"] + "'";
            reader = obj.getsql(sql);
            if (reader.Read())
            {
                Label1.Text = reader.GetString(0);
                TextBox2.Text = reader.GetValue(1).ToString();
                TextBox3.Text = reader.GetValue(2).ToString();
                TextBox4.Text = reader.GetValue(3).ToString();
                ClientScript.RegisterStartupScript(GetType(), "imgbtn", " var div = document.getElementById('log');div.style.display = (div.style.display === 'none' || div.style.display === '') ? 'block' : 'none';", true);
            }
            Button2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            ClientScript.RegisterStartupScript(this.GetType(), "HideElement", "document.getElementById('log').style.display = 'none';", true);
            sql = "select * from userTable where username='" + Session["user1"].ToString() + "'";
            dt = obj.gettable(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Button2.Visible=true;
           

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["user"] = "Shirt";
            Response.Redirect("laundryhome.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["user"] = "pants";
            Response.Redirect("laundryhome.aspx");
           
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            int txt1=int.Parse(TextBox1.Text);
            int txt2=int.Parse(TextBox2.Text);

            int Label5=txt1 * txt2;
            sql = "insert into userTable values('" + Label1.Text + "'," + TextBox1.Text + ",'" + Label2.Text + "'," + Label5.ToString() + ",'" + Session["user1"].ToString() +"')";
            obj.insupdel(sql);

        }
        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            int txt1 = int.Parse(TextBox1.Text);
            int txt2 = int.Parse(TextBox3.Text);

            int Label5 = txt1 * txt2;
            sql = "insert into userTable values('" + Label1.Text + "'," + TextBox1.Text + ",'" + Label3.Text + "'," + Label5.ToString() + ",'" + Session["user1"].ToString() + "')";
            obj.insupdel(sql);

        }
        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            int txt1 = int.Parse(TextBox1.Text);
            int txt2 = int.Parse(TextBox4.Text);

            int Label5 = txt1 * txt2;
            sql = "insert into userTable values('" + Label1.Text + "'," + TextBox1.Text + ",'" + Label4.Text + "'," + Label5.ToString() + ",'" + Session["user1"].ToString() + "')";
            obj.insupdel(sql);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("getdate.aspx");
        }
    }
}