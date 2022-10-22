<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="HotelBooking.Booking" %>

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
            width: 261px;
        }
        .auto-style3 {
            width: 261px;
            height: 81px;
        }
        .auto-style4 {
            height: 81px;
        }
        .auto-style11 {
            width: 261px;
            height: 100px;
        }
        .auto-style12 {
            height: 100px;
        }
        .auto-style14 {
            height: 100px;
            width: 391px;
        }
        .auto-style15 {
            height: 81px;
            width: 391px;
        }
        .auto-style16 {
            width: 391px;
        }
    </style>
</head>
<body>
    <h1>Book Your Room</h1>

    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td id="ciDate" class="auto-style11">Check In Date</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbDate1" runat="server" Height="40px" TextMode="Date" Width="227px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldCid" runat="server" ControlToValidate="tbDate1" ErrorMessage="Please Select Check in Date" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr><br />
                <tr>
                    <td id="coDate" class="auto-style11">Check Out Date</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbDate2" runat="server" Height="39px" TextMode="Date" Width="222px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldCod" runat="server" ControlToValidate="tbDate2" ErrorMessage="Please Select Check Out Date" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr><br />
                <tr>
                    <td id="roomNo" class="auto-style3">Room No</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="ddroomNo" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoomNo" DataValueField="RoomNo">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT [RoomNo] FROM [Rooms] WHERE ([IsBooked] = @IsBooked)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="False" Name="IsBooked" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldRoomNo" runat="server" ControlToValidate="ddroomNo" ErrorMessage="Please Select Room No" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr><br />
                <tr>
                    <td class="auto-style2">
                        <br />
                    </td>
                    <td class="auto-style16">
                        <asp:Button class="btn btn-success" ID="bookBtn" runat="server" Height="40px" Text="Book" Width="132px" OnClick="Book" />
                    &nbsp;
                        <asp:Button class="btn btn-danger" ID="backbtn" runat="server" Height="40px" OnClick="backToHomePage" Text="Back" Width="133px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Label ID="print" runat="server"></asp:Label>
    </form>
</body>
</html>
