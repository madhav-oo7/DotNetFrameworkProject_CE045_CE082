<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HotelBooking.Register" %>

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
            width: 275px;
        }
        .auto-style3 {
            width: 205px;
        }
        .auto-style4 {
            width: 275px;
            height: 29px;
        }
        .auto-style5 {
            width: 205px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</head>
<body>
    <h1>Welcome Hotel Golden Tulip</h1><br />
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td id="name" class="auto-style2">Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="tbName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td id="email" class="auto-style2">Email</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email pattern is not matched." ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td id="mobile" class="auto-style4">Mobile No</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMo" runat="server" ControlToValidate="tbMobile" ErrorMessage="Mobile No is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbMobile" ErrorMessage="MobileNo must be of 10 digits." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td id="pwd" class="auto-style2">Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPwd" runat="server" ControlToValidate="tbPwd" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td id="cpwd" class="auto-style2">Confirm Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbCpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCpwd" runat="server" ErrorMessage="Confirm password is required" ForeColor="Red" ControlToValidate="tbCpwd"></asp:RequiredFieldValidator>
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPwd" ControlToValidate="tbCpwd" ErrorMessage="Confirm Password and Password must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Already have account ?
                        <asp:HyperLink ID="hllogin" runat="server" ForeColor="Blue" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:Button class="btn btn-success" ID="btnRegister" runat="server" Text="Register" OnClick="Register_user" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
