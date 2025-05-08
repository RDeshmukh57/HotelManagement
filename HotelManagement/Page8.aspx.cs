using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagement
{
    public partial class Page8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string username = Request.QueryString["username"];

                UserLable.Text = "Welcome, " + Server.HtmlEncode(username);
                GetData();

            }
        }
        public void GetData()
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M9PCFSC\\SQLEXPRESS;database=HotelManagement;integrated security=yes");
            string readQuery = @"SELECT  UserName ,RoomType,Amenities                               
                               FROM [HotelRegistration]";

            SqlCommand cmd = new SqlCommand(readQuery, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewHotelRegistration.DataSource = dt;
            GridViewHotelRegistration.DataBind();


        }
        protected void GridViewHotelRegistration_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}