using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class popup : System.Web.UI.Page
    {
        data obj = new data();
        string sql;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = "select items,drycleaning,washing,ironing from adminTable where items='"+Session["user"]+"'";
            reader = obj.getsql(sql);
            if (reader.Read())
            {
                Label1.Text = reader.GetString(0);
                TextBox2.Text = reader.GetValue(1).ToString();
                TextBox3.Text = reader.GetValue(2).ToString();
                TextBox4.Text = reader.GetValue(3).ToString();

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int txt1=int.Parse(TextBox1.Text);
            int txt2=int.Parse(TextBox2.Text);

           int Label5=txt1 * txt2;
            sql = "insert into userTable values('" + Label1.Text + "'," + TextBox1.Text + ",'" + Label2.Text + "'," + Label5.ToString() + ")";
            obj.insupdel(sql);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            int txt1 = int.Parse(TextBox1.Text);
            int txt2 = int.Parse(TextBox3.Text);

            int Label5 = txt1 * txt2;
            sql = "insert into userTable values('" + Label1.Text + "'," + TextBox1.Text + ",'" + Label3.Text + "'," + Label5.ToString() + ")";
            obj.insupdel(sql);


        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}