using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_user(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            string email = tbEmail.Text;
            string password = tbPwd.Text;

            if (email == "admin@gmail.com" && password == "Admin1234")
            {
                Session["email"] = email;
                Response.Write("<script>alert('Successful Login!')</script>");
                Response.Redirect("/Admin.aspx");//To Admin DashBoard

            }
            try
            {
                using (con)
                {
                    string query = "SELECT * FROM Users WHERE Email=@Email AND Password=@Password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    con.Open();
                    
                        
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        Session["email"] = email;
                        Response.Write("<script>alert('Successful Login!')</script>");
                        Response.Redirect("/Home.aspx"); // to User DashBoard
                    }
                    else
                    {
                        Response.Write("<script>alert('Incorrect Email or Password!')</script>");
                    }
                    con.Close();
                }
            }

            catch (Exception mes)
            {
                Console.WriteLine(mes.Message.ToString());
            }

        }
    }
}