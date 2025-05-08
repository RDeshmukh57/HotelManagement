using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;


namespace HotelManagement
{
    public partial class Page6 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
            
        }

        public void GetData()
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M9PCFSC\\SQLEXPRESS;database=HotelManagement;integrated security=yes");
            string readQuery = @"SELECT FirstName, LastName, UserName, Gender, 
                                Email, Phone, Address, Age, Languages, Country 
                         FROM UserRegistration";

            SqlCommand cmd = new SqlCommand(readQuery, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewUserDetails.DataSource = dt;
            GridViewUserDetails.DataBind();


        }

        protected void GridViewUserDetails_SelectedIndexChanged(object sender, EventArgs e)
        {
            string username = GridViewUserDetails.SelectedDataKey.Value.ToString();

            Response.Redirect("Page7.aspx?username=" + Server.UrlEncode(username));


        }
    }
}