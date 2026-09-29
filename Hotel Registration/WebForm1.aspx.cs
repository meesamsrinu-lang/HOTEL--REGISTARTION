using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Registration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Username = TextBox1.Text;
            string Password = TextBox2.Text;
            Response.Redirect("WebForm5.aspx");


        }
    }
}