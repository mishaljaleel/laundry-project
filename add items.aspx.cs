using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class add_items : System.Web.UI.Page
    {
        data obj = new data();
        string sql;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            sql = "insert into adminTable values('" + TextBox1.Text + "'," + TextBox2.Text + "," + TextBox3.Text + "," + TextBox4.Text + ")";
            obj.insupdel(sql);
            Response.Redirect("laundryhome.aspx");
        }
    }
}