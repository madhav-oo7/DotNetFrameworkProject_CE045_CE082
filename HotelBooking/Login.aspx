<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelBooking.Login" %>

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
            width: 253px;
        }
        .auto-style3 {
            width: 253px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 179px;
            height: 26px;
        }
        .auto-style6 {
            width: 179px;
        }
    </style>
</head>
<body>
    <br /><h1>Login</h1><br />
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td id="uEmail" class="auto-style3">Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email pattern is not matched" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td id="uPwd" class="auto-style3">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPwd" runat="server" ControlToValidate="tbPwd" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">New User ?<asp:HyperLink ID="hlinkRegister" runat="server" ForeColor="Blue" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                    </td>
                    <td class="auto-style6">
                        <asp:Button class="btn btn-success" ID="loginBtn" runat="server" Text="Login" OnClick="Login_user" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
