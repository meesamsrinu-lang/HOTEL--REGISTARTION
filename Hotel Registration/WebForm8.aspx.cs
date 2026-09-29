using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Registration
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            if (Session["Username"] == null)
            {
                Response.Redirect("WebFrom4.aspx");
                return;
            }
            if (!IsPostBack)
            {
                Loadwelcome();
            }
            void Loadwelcome()
            {
                if (Session["Username"] == null)
                    return;
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
                con.Open();
                string query = "select * from [hotel Registration] WHERE username=@username";
                SqlCommand cmd=new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", username);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    Label1.Text = "welcome to Srinu Resorts<b> " + username + "</b></br/>" +"<br/<br/"+

                        " Your Room: " + dr["Roomtype"].ToString() + "<br/><br/> " +
                        " Your Amenities:" + dr["Amenities"].ToString();
                }
                else
                {
                    Label1.Text = "welcome" + username + "<br/>No bookings found.";
                }
            }
        }
    }
}