using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Registration
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            Getdata();


        }
        private void Getdata()
        {
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string query = "select*from  UserRegistration";
            SqlDataAdapter da= new SqlDataAdapter(query,con);
          DataSet ds = new DataSet();
            da.Fill(ds, "UserRegistration");
            GridView1.DataSource = ds.Tables["UserRegistration"];
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm6.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rows = GridView1 .Rows[e.RowIndex];
            var Userid = (Label)rows.FindControl("Label1");
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string query = "Delete from UserRegistration WHERE (Userid=@Userid)";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@Userid", Userid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Getdata();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Getdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rows= GridView1 .Rows[e.RowIndex];
            var Userid = (TextBox)rows.FindControl("TextBox1");
            var FirstName = (TextBox)rows.FindControl("TextBox2");
            var LastName = (TextBox)rows.FindControl("TextBox3");
            var UserName = (TextBox)rows.FindControl("TextBox4");
            var Gender = (TextBox)rows.FindControl("TextBox5");
            var Password = (TextBox)rows.FindControl("TextBox6");
            var ConformPassword = (TextBox)rows.FindControl("TextBox7");
            var Email = (TextBox)rows.FindControl("TextBox8");
            var Phone = (TextBox)rows.FindControl("TextBox9");
            var Address = (TextBox)rows.FindControl("TextBox10");
            var Age = (TextBox)rows.FindControl("TextBox11");
            var Languages = (TextBox)rows.FindControl("TextBox12");
            var Country = (TextBox)rows.FindControl("TextBox13");
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string query = "update UserRegistration set FirstName=@FirstName,LastName=@LastName,UserName=@UserName,Gender=@Gender,Password=@Password,ConformPassword=@ConformPassword,Email=@Email,Phone=@phone,Address=@Address,Age=@Age,Languages=@Languages,Country=@Country WHERE Userid=@Userid";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Userid", Userid.Text);
            cmd.Parameters.AddWithValue ("@FirstName", FirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", LastName.Text);
            cmd.Parameters.AddWithValue("@UserName", UserName.Text);
            cmd.Parameters.AddWithValue("@Gender", Gender.Text);
            cmd.Parameters.AddWithValue("@Password", Password.Text);
            cmd.Parameters.AddWithValue("@ConformPassword", ConformPassword.Text);
            cmd.Parameters.AddWithValue("@Email", Email.Text);
            cmd.Parameters.AddWithValue("@phone", Phone.Text);
            cmd.Parameters.AddWithValue("@Address", Address.Text);
            cmd.Parameters.AddWithValue("@Age", Age.Text);
            cmd.Parameters.AddWithValue("@Languages", Languages.Text);
            cmd.Parameters.AddWithValue("@country", Country.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            Getdata();
          


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex= -1;
            Getdata() ;

        }
    }
}