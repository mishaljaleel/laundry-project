using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundry
{
    public partial class TESTING : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }

        protected void myButton_Click(object sender, EventArgs e)
        {
            string script = "$('#bb').modal('show');";
            ClientScript.RegisterStartupScript(this.GetType(),"popup", script,true);
        }

        protected void btnOpenModal_Click(object sender, EventArgs e)
        {

        }
    }
}