using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Registration
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("WebForm4.aspx");
                return;
            }
            if (!IsPostBack)
            {
                TextBox1.Text = Session["Username"].ToString();
            }

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username=TextBox1.Text;
            string Roomtype=string.Empty;
            string Amenities=string.Empty;
            

            if (RadioButton1.Checked == true)
            {
                Roomtype = RadioButton1.Text;
            }
            else if (RadioButton2.Checked == true)
            {
                Roomtype = RadioButton2.Text;
            }
            if(CheckBox1.Checked == true)
            {
               Amenities = CheckBox1.Text + " , " ;
            }
            if (CheckBox2.Checked == true)
            {
                Amenities = CheckBox2.Text + " , ";
            }
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string query = "insert into [hotel Registration] (username,Roomtype,Amenities)values(@username,@Roomtype,@Amenities)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@Roomtype", Roomtype);
            cmd.Parameters.AddWithValue("@Amenities", Amenities);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("WebForm7.aspx");
            
        }
    }
}