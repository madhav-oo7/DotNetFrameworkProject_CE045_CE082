<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageRooms.aspx.cs" Inherits="HotelBooking.ManageRooms" %>

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
    <h2>Rooms Details</h2><br />
    <form id="form1" runat="server">
        <div>
            <asp:GridView class="table table-striped-bordered table-dark" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomNo" DataSourceID="SqlDataSource1" Height="247px" Width="788px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                <Columns>
                    <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" ReadOnly="True" SortExpression="RoomNo" />
                    <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                    <asp:BoundField DataField="RoomPrice" HeaderText="RoomPrice" SortExpression="RoomPrice" />
                    <asp:CheckBoxField DataField="IsBooked" HeaderText="IsBooked" SortExpression="IsBooked" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                SelectCommand="SELECT * FROM [Rooms] WHERE ([IsBooked] = @IsBooked)"
                DeleteCommand="DELETE FROM [Rooms] WHERE [RoomNo] = @RoomNo"
                UpdateCommand="UPDATE [Rooms] SET [RoomType] = @RoomType, [RoomPrice] = @RoomPrice WHERE [RoomNo]= @RoomNo">
                <SelectParameters>
                    <asp:Parameter DefaultValue="False" Name="IsBooked" Type="Boolean" />
                </SelectParameters>
                <DeleteParameters>
                            <asp:Parameter Name="RoomNo" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RoomNo" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
&nbsp;&nbsp;
            <asp:Button class="btn btn-danger" ID="Button1" runat="server" OnClick="backToAdminPage" Text="Back" Width="116px" />
        </div>
    </form>
</body>
</html>
