<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HotelBooking.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 318px;
            height: 31px;
        }
        .auto-style4 {
            width: 382px;
            height: 31px;
        }
        .auto-style5 {
            width: 290px;
            height: 31px;
        }
    </style>
</head>
<body>
    <h1>Welcome To Hotel Golden Tulip</h1><br /><br />
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="print_email" runat="server" Text="print_email"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Button class="btn btn-primary" ID="CheckBtn" runat="server" Text="Check Available Rooms" Width="183px" OnClick="CheckAvailableRooms" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button class="btn btn-primary" ID="BookingBtn" runat="server" OnClick="BookingPage" Text="Booking" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button class="btn btn-danger" ID="LogoutBtn" runat="server" OnClick="Logout" Text="Log Out" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
