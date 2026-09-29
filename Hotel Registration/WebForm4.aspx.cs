using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Registration
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username=TextBox1.Text;
            string Password=TextBox2.Text;
            SqlConnection con=new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string query = "select count(*) from UserRegistration where(Username=@Username and Password=@Password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("username", Username);
            cmd.Parameters.AddWithValue("password", Password);
            var count=Convert.ToInt32(cmd.ExecuteScalar());
            if (count >0)
            {
                Session["Username"] = Username;

                Response.Redirect("WebForm5.aspx");
            }
            else
            {
                Response.Redirect("WebForm3.aspx");
            }
           con.Close();
           
        }

       
    }


}