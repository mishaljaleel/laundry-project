<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="laundry.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 214px;
        }
        .auto-style9 {
            position: absolute;
            top: 152px;
            left: 207px;
            z-index: 1;
            width: 348px;
            height: 17px;
        }
        .auto-style10 {
            width: 214px;
            text-align: center;
        }
        .auto-style11 {
            position: absolute;
            top: 197px;
            left: 279px;
            z-index: 1;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            position: absolute;
            top: 16px;
            left: 232px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 73px;
            left: 346px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">UserName</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style13"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">PassWord</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click1" style="z-index: 1" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style9" ForeColor="#FF3300" NavigateUrl="reg.aspx">DONT HAVE AN A/C ? SINGUP HERE</asp:HyperLink>
                    </td>
             </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style11" ForeColor="Red" NavigateUrl="forgotpassword.aspx">FORGOT PASSWORD ?</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
