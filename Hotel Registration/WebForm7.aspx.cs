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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Getdata();


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        private void Getdata()
        {
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string query = "select*from  [hotel Registration]";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "[hotel Registration]");
            GridView1.DataSource = ds.Tables[" [hotel Registration]"];
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            var username = (Label)row.FindControl("Label1");
            SqlConnection con = new SqlConnection("data source=SRINU-MEESAM\\SRINU;database=project;integrated security=yes");
            con.Open();
            string query = "Delete from [hotel Registration] WHERE username=@username";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Getdata();


        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            var username = (TextBox)row.FindControl("TextBox1");
            var Roomtype = (TextBox)row.FindControl("TextBox2");
            var Amenities = (TextBox)row.FindControl("TextBox3");
            SqlConnection conn = new SqlConnection("data source=data source = SRINU - MEESAM\\SRINU; database = project; integrated security = yes");
            conn.Open();
            string query = "update [hotel Registration] set Roomtype=@Roomtype,Amenities=@Amenities WHERE username=@username";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("username", username.Text);
            cmd.Parameters.AddWithValue("Roomtype", Roomtype.Text);
            cmd.Parameters.AddWithValue("Amenities", Amenities.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.EditIndex = -1;
            Getdata();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Getdata();


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Getdata();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm8.aspx");

        }
    }
    }
      