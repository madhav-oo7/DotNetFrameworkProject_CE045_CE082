<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="HotelBooking.AddRoom" %>

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
            width: 344px;
            height: 53px;
        }
        .auto-style3 {
            width: 344px;
            height: 36px;
        }
        .auto-style4 {
            height: 36px;
        }
        .auto-style5 {
            width: 344px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
        .auto-style7 {
            width: 344px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style11 {
            height: 53px;
        }
        .auto-style12 {
            width: 344px;
            height: 51px;
        }
        .auto-style13 {
            height: 51px;
        }
    </style>
</head>
<body>
    <h2>Add Room</h2>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="roomNo" runat="server" Text="Room No"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbRoomNo" runat="server" TextMode="Number" Width="169px"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="roomType" runat="server" Text="Room Type"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddRoomType" runat="server" Width="178px">
                            <asp:ListItem>Please Select</asp:ListItem>
                            <asp:ListItem>Single Bed</asp:ListItem>
                            <asp:ListItem>Double Bed</asp:ListItem>
                            <asp:ListItem>Delux</asp:ListItem>
                            <asp:ListItem>Super Delux</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="roomPrice" runat="server" Text="Room Price"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tbRoomPrice" runat="server" TextMode="Number" Width="168px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button class="btn btn-danger" ID="backbtn" runat="server" OnClick="backToAdminPage" Text="Back" Width="103px" Height="37px" />
                    </td>
                    <td class="auto-style11">
                        <asp:Button class="btn btn-success" ID="addRoombtn" runat="server" Height="37px" OnClick="Add" Text="Add" Width="106px" />
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="print" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
