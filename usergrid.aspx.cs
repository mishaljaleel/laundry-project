using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class usergrid : System.Web.UI.Page
    {
        DataTable dt;
        data obj = new data();
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            sql = "select * from userTable where item='" + Session["user"] + "'";
            dt = obj.gettable(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}