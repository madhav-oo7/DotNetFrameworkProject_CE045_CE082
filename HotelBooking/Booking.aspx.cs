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
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void backToHomePage(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Book(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            string email = Session["email"].ToString();
            string cid = tbDate1.Text;
            string cod = tbDate2.Text;
            int roomNo = Convert.ToInt32(ddroomNo.Text);

            try
            {
                using(con)
                {
                    try
                    {
                        string query = "INSERT INTO Booking(Email, CheckIn, CheckOut,RoomNo) VALUES(@Email,@CheckIn,@CheckOut,@RoomNo)";
                        string query2 = "UPDATE [Rooms] SET [IsBooked] = @IsBooked WHERE [RoomNo] = @RoomNo";

                        using (con)
                        {
                            SqlCommand cmd = new SqlCommand(query, con);
                            cmd.Parameters.AddWithValue("@Email", email);
                            cmd.Parameters.AddWithValue("@CheckIn", cid);
                            cmd.Parameters.AddWithValue("@CheckOut", cod);
                            cmd.Parameters.AddWithValue("@RoomNo", roomNo);
                           
                            SqlCommand cmd2 = new SqlCommand(query2, con);
                            cmd2.Parameters.AddWithValue("@RoomNo", roomNo);
                            cmd2.Parameters.AddWithValue("@IsBooked", 1);

                            con.Open();
                            cmd.ExecuteNonQuery();
                            cmd2.ExecuteNonQuery();
                            con.Close();

                            
                            print.Text = "Your Room is Successfully Booked".ToString();
                        }
                        
                    }
                    catch (Exception msg)
                    {
                        Response.Write(msg.Message.ToString());
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