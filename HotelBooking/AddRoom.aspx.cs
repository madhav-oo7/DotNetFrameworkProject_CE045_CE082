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
    public partial class AddRoom : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            int roomNo = Convert.ToInt32(tbRoomNo.Text);
            string roomType = ddRoomType.Text;
            int roomPrice = Convert.ToInt32(tbRoomPrice.Text);

            try
            {
                using (con)
                {
                    string query1 = "SELECT * FROM Rooms WHERE RoomNo=@RoomNo";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@RoomNo", roomNo);

                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();

                    if (dt.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('This Room is already exist!')</script>");

                    }
                    else
                    {
                        try
                        {
                            string query = "INSERT INTO Rooms(RoomNo, RoomType, RoomPrice) VALUES(@RoomNo, @RoomType,@RoomPrice)";
                            using (con)
                            {
                                SqlCommand cmd = new SqlCommand(query, con);
                                cmd.Parameters.AddWithValue("@RoomNo", roomNo);
                                cmd.Parameters.AddWithValue("@RoomType", roomType);
                                cmd.Parameters.AddWithValue("@RoomPrice", roomPrice);

                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                                print.Text = "Room is added.";
                                
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

        protected void backToAdminPage(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}