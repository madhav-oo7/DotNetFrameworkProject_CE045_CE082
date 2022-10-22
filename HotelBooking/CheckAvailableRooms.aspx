<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckAvailableRooms.aspx.cs" Inherits="HotelBooking.CheckAvailableRooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
    <h2>Available Rooms</h2><br />
    <form id="form1" runat="server">
        <div>
            <asp:GridView class="table table-striped-bordered table-dark text-light" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="RoomNo" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="244px" Width="663px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" ReadOnly="True" SortExpression="RoomNo" />
                    <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                    <asp:BoundField DataField="RoomPrice" HeaderText="RoomPrice" SortExpression="RoomPrice" />
                    <asp:CheckBoxField DataField="IsBooked" HeaderText="IsBooked" SortExpression="IsBooked" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT * FROM [Rooms]"></asp:SqlDataSource>
        </div>
        <asp:Button  class="btn btn-danger" ID="backbtn" runat="server" Height="36px" OnClick="backToAdminPage" Text="Back" Width="138px" />
    </form>
</body>
</html>
