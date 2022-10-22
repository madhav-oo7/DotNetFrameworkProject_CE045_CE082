using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            print_email.Text = "Hello " + Session["email"].ToString();
        }


        protected void Logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void BookingPage(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx");
        }

        protected void CheckAvailableRooms(object sender, EventArgs e)
        {
            Response.Redirect("CheckAvailableRooms.aspx");
        }
    }
}