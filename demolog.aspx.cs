using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class demolog : System.Web.UI.Page
    {
        data obj = new data();
        string sql, type;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {

            sql = "insert into loginTable values('" + TextBox6.Text + "','" + TextBox8.Text + "','user')";
            obj.insupdel(sql);
            sql = "insert into regTable values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox7.Text + "','" + TextBox6.Text + "')";
            obj.insupdel(sql);

        }

       
        protected void Login_Click(object sender, EventArgs e)
        {
            Session["user1"] = TextBox4.Text;
            sql = "select usertype from logintable where username='" + TextBox4.Text + "' and password='" + TextBox5.Text + "'";
            dr = obj.getsql(sql);
            if (dr.Read())
            {
                type = dr.GetString(0);
                if (type == "user")
                    Response.Redirect("laundryhome.aspx");
                else if (type == "admin")
                {
                    Response.Redirect("adminhome.aspx");
                }
            }
            else
            {
                Label1.Text = "username and password doesnot exist";
            }

        }
    }
}