using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Register_user(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            string username = tbName.Text;
            string email = tbEmail.Text;
            string mobile = tbMobile.Text;
            string password = tbPwd.Text;

            try
            {
                using (con)
                {
                    string query1 = "SELECT * FROM Users WHERE Email=@Email";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@Email", email);

                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();

                    if (dt.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Email is already registered!')</script>");
                    }
                    else
                    {

                        try
                        {
                            string query2 = "INSERT INTO Users(Name,Email,MobileNo,Password) VALUES(@Name,@Email,@MobileNo,@Password)";
                            using (con)
                            {
                                SqlCommand cmd2 = new SqlCommand(query2, con);
                                cmd2.Parameters.AddWithValue("@Name", username);
                                cmd2.Parameters.AddWithValue("@Email", email);
                                cmd2.Parameters.AddWithValue("@MobileNo", mobile);
                                cmd2.Parameters.AddWithValue("@Password", password);


                                con.Open();
                                cmd2.ExecuteNonQuery();
                                con.Close();

                                Response.Redirect("~/Login.aspx");//Back to login page
                            }
                        }
                        catch (Exception msg)
                        {
                            Response.Write(msg.Message.ToString());
                        }

                    }


                }
             }
            catch (Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        

        }
            

    }
}