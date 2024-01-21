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
    public partial class next : System.Web.UI.Page
    {
        string sql;
        data obj=new data();
        DataTable dt;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql= "select RegId,name,phone,email from regTable where username='" + Session["user1"].ToString() + "'";
            rdr = obj.getsql(sql);
            if (rdr.Read())
            {
                TextBox1.Text = rdr["RegId"].ToString();    
                TextBox2.Text = rdr.GetString(1);
                TextBox3.Text = rdr["phone"].ToString();
                TextBox7.Text = rdr["email"].ToString();
            }

            sql="select address,pud,pincode from orderTable where username='"+ Session["user1"].ToString() + "'";
            rdr= obj.getsql(sql);
            if (rdr.Read())
            {
                TextBox4.Text = rdr["address"].ToString();
                TextBox8.Text = rdr["pincode"].ToString();
                TextBox5.Text = rdr["pud"].ToString();
                DateTime dt = Convert.ToDateTime(rdr["pud"].ToString()).AddDays(3);
                TextBox6.Text = dt.ToString("yyyy/MM/dd hh:mm");
            }
            sql = "select * from userTable where username='" + Session["user1"].ToString() + "'";
      
            dt = obj.gettable(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            

        }
        public void dis()
        {
            sql = "select * from regTable w='" + Session["user1"].ToString() + "'";
            rdr=obj.getsql(sql);
            TextBox2.Text = rdr["name"].ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}