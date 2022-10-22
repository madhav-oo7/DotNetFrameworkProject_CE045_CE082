<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HotelBooking.Admin" %>

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
            width: 168px;
        }
        .auto-style4 {
            width: 268px;
        }
        .auto-style5 {
            width: 253px;
        }
        .auto-style6 {
            width: 229px;
        }
    </style>
</head>
<body>
    <h2>Welcome to Admin Dashboard</h2>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="print_msg" runat="server" Text="print_msg"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Button class="btn btn-primary" ID="addRoombtn" runat="server" OnClick="AddRoom" Text="Add Room" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button class="btn btn-primary" ID="manageRoomsbtn" runat="server" OnClick="ManageRooms" Text="Manage Rooms" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button class="btn btn-primary" ID="manageUsersbtn" runat="server" OnClick="ManageUsers" Text="Manage Users" />
                    </td>
                    <td>
                        <asp:Button class="btn btn-danger" ID="logoutbtn" runat="server" OnClick="Logout" Text="Logout" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
