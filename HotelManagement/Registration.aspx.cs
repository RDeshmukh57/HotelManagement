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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UserNametxtbox_TextChanged(object sender, EventArgs e)
        {
            // Optional: Add logic if needed, for now just leave it empty if nothing is required
        }

        protected void Registerbtn_Click(object sender, EventArgs e)
        {
            string Firstname, Lastname, Username, Password, ConfPassword,
                Email, Address, Languages, Country;
            int Phone, Age;

            Firstname=FirstNametxtbox.Text;
            Lastname=LastNametxtbox.Text;
            Username=UserNametxtbox.Text;
            string Gender = MaleRbtn.Checked ? "Male" :
                                    FemaleRbtn.Checked ? "Female" :"";
            Password=Passwordtxtbox.Text;
            Email=Emailtxtbox.Text;
            Address=Addresstxtbox.Text;
            ConfPassword = ConfirmPasswordtxtbox.Text;
           // Phone=int.Parse(Phonetxtbox.Text);
            //Age=int.Parse(Agetxtbox.Text);
            bool isAge = int.TryParse(Agetxtbox.Text, out Age);
            bool isPhone = int.TryParse(Phonetxtbox.Text, out Phone);
            Country = ContryDroplist.SelectedValue;
            Languages = "";
            if (Englishbox.Checked) Languages += "English,";
            if (Marathibox.Checked) Languages += "Marathi,";
            if (Hindibox.Checked) Languages += "Hindi,";
            // Remove trailing comma if any
            Languages = Languages.TrimEnd(',');


            SqlConnection con = new SqlConnection("server=DESKTOP-M9PCFSC\\SQLEXPRESS;database=HotelManagement;integrated security=yes");
            con.Open();

            string insertQuery = @"INSERT INTO [UserRegistration]
                                            VALUES
                                            (@FirstName, @LastName, @UserName, @Gender, 
                                             @Password,@ConfPassword, @Email, @Phone, @Address, 
                                             @Age, @Languages, @Country)";

            SqlCommand cmd= new SqlCommand(insertQuery, con);

            cmd.Parameters.AddWithValue("@FirstName", Firstname);
            cmd.Parameters.AddWithValue("@LastName", Lastname);
            cmd.Parameters.AddWithValue("@UserName", Username);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@ConfPassword", ConfPassword);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Phone", Phone);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@Age", Age);
            cmd.Parameters.AddWithValue("@Languages", Languages);
            cmd.Parameters.AddWithValue("@Country", Country);

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Page4.aspx");
        }

        
    }
}