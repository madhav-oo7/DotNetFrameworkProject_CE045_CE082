using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            print_msg.Text = "Hello Admin".ToString();
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void ManageUsers(object sender, EventArgs e)
        {
            Response.Redirect("ManageUsers.aspx");
        }

        protected void ManageRooms(object sender, EventArgs e)
        {
            Response.Redirect("ManageRooms.aspx");
        }

        protected void AddRoom(object sender, EventArgs e)
        {
            Response.Redirect("AddRoom.aspx");
        }
    }
}