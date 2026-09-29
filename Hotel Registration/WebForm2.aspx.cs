using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Registration
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {

            int Userid = int.Parse(TextBox1.Text);
            string Firstname = TextBox2.Text;
            string Lastname = TextBox3.Text;
            string Username = TextBox4.Text;
            string Gender = string.Empty;
            string Password = TextBox5.Text;
            string ConformPassword = TextBox6.Text;
            string Email = TextBox7.Text;
            string Phone = TextBox8.Text;
            string Address = TextBox9.Text;
            int Age = int.Parse(TextBox1.Text);
            string Languages = string.Empty;
            string Country = string.Empty;
            Country = DropDownList1.Text;
            if (RadioButton1.Checked == true)
            {
                Gender = RadioButton1.Text;
            }
            else if (RadioButton2.Checked == true)
            {
                Gender = RadioButton2.Text;
            }
            if (CheckBox1.Checked == true)
            {
                Languages += CheckBox1.Text + ",";
            }
            if (CheckBox2.Checked == true)
            {
                Languages += CheckBox2.Text + ",";
            }
            if (CheckBox3.Checked == true)
            {
                Languages += CheckBox3.Text + ",";
            }
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string Query = @"INSERT INTO UserRegistration
(Userid, Firstname, Lastname, Username, Gender, Password,
 ConformPassword, Email, Phone, Address, Age, Languages, Country)
VALUES
(@Userid, @Firstname, @Lastname, @Username, @Gender, @Password,
 @ConformPassword, @Email, @Phone, @Address, @Age, @Languages, @Country)";

            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("Userid", Userid);
            cmd.Parameters.AddWithValue("Firstname", Firstname);
            cmd.Parameters.AddWithValue("Lastname", Lastname);
            cmd.Parameters.AddWithValue("Username", Username);
            cmd.Parameters.AddWithValue("Gender", Gender);
            cmd.Parameters.AddWithValue("Password", Password);
            cmd.Parameters.AddWithValue("ConformPassword", ConformPassword);
            cmd.Parameters.AddWithValue("Email", Email);
            cmd.Parameters.AddWithValue("Phone", Phone);
            cmd.Parameters.AddWithValue("Address", Address);
            cmd.Parameters.AddWithValue("Age", Age);
            cmd.Parameters.AddWithValue("Languages", Languages);
            cmd.Parameters.AddWithValue("Country", Country);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("WebForm3.aspx");


        }
    }
}