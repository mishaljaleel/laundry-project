using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        string sql;
        data obj=new data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == TextBox4.Text)
            {

                sql = "update loginTable set password='" + TextBox3.Text + "' where username='" + TextBox2.Text + "'";
                obj.insupdel(sql);
            }
            else
                Response.Write("<script>alert('enter the password correctly')</script>");
            
        }

    }
}