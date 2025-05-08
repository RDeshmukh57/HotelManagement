using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace HotelManagement
{
    public partial class Page7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string username = Request.QueryString["username"];

                lblUsername.Text = "Welcome, " + Server.HtmlEncode(username);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string username = Request.QueryString["username"];

            string roomType = "";
            if (RbtnDelux.Checked)
            {
                roomType += "Delux";
            }
            else if (RbtnOrdinary.Checked) 
            {
                roomType += "Ordinary";
            }

            string amenities = "";

            if (AcCbox.Checked && ComputerCbox.Checked)
            {
                amenities = "AC, Computer";
            }
            else if (AcCbox.Checked)
            {
                amenities = "AC";
            }
            else if (ComputerCbox.Checked)
            {
                amenities = "Computer";
            }
            else
            {
                amenities = "None";  // Optional: if nothing selected
            }


            SqlConnection con = new SqlConnection("server=DESKTOP-M9PCFSC\\SQLEXPRESS;database=HotelManagement;integrated security=yes");

            string insertQuery = @"INSERT INTO HotelRegistration (UserName,RoomType, Amenities)
                           VALUES (@UserName, @RoomType, @Amenities)";

            con.Open();        
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@UserName", username);
            cmd.Parameters.AddWithValue("@RoomType", roomType);
            cmd.Parameters.AddWithValue("@Amenities", amenities);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Page8.aspx?username=" + Server.UrlEncode(username));
        }
    }
}
