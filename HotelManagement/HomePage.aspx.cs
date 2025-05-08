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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewUserRegisterBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void HomePageLogin_Click(object sender, EventArgs e)
        {

            string usernameLogin = loginUserNametxtbox.Text;
            string passwordLogin = loginPasswordtxtbox.Text;

            SqlConnection con = new SqlConnection("server=DESKTOP-M9PCFSC\\SQLEXPRESS;database=HotelManagement;integrated security=yes");

            string sqlLogin = @"SELECT COUNT(*) from  [UserRegistration] where UserName = @UserName AND Password = @Password";

            SqlCommand cmd= new SqlCommand(sqlLogin, con);
            cmd.Parameters.AddWithValue("@UserName", usernameLogin);
            cmd.Parameters.AddWithValue ("@Password", passwordLogin);

            con.Open();
            int count = (int)cmd.ExecuteScalar();
            con.Close();

            if (count == 1)
            {
                // Login successful
                Response.Redirect("Page6.aspx?username=" + Server.UrlEncode(usernameLogin));
            }
            else
            {
                // Login failed
                loginErrorLabel.Text = "Invalid Username or Password.";
                loginErrorLabel.Visible = true;
            }
                
        }

    }
}