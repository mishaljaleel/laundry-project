<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="next.aspx.cs" Inherits="laundry.next" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 363px;
        }
        .auto-style3 {
            width: 383px;
        }
        #main{
            position: absolute;
            margin-left: 46px;
            margin-top: 65px;
        }
        .aa{
            border: none;
            border-bottom: 2px solid wheat;
            background: transparent;
            outline: none;
            color: black;
            font-size: 16px;
        }
        .a{
            border: none;
            border-bottom: 2px solid wheat;
            width: 155px;
            text-align: center;
        }
        .hr{
            position: absolute;
            margin-top: 198px;
            width: 1323px;
            margin-left: 95px;
            background-color: red;
            height: 1px;
        }
        .auto-style4 {
            width: 950px;
            height: 160px;
            position: absolute;
            top: 280px;
            left: 285px;
            z-index: 1;
            text-align: center;
        }
        .auto-style5 {
            position: absolute;
            top: 514px;
            left: 1201px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">OrderId:<asp:TextBox ID="TextBox1" runat="server" CssClass="aa"></asp:TextBox>
                    </td>
                    <td class="auto-style3">Name :
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="aa"></asp:TextBox>
                    </td>
                    <td>Phone :
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="aa"></asp:TextBox>
                    </td>
                     <td>Email :
                         <asp:TextBox ID="TextBox7" runat="server" TextMode="Email" CssClass="aa"></asp:TextBox>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Address : <asp:TextBox ID="TextBox4" runat="server" CssClass="aa"></asp:TextBox>
                    </td>
                    <td>Pincode :
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="Email" CssClass="aa"></asp:TextBox>
                    </td>
                    <td class="auto-style3">PickupDate : <asp:TextBox ID="TextBox5" runat="server" CssClass="a"></asp:TextBox>
                    </td>
                    <td>DeliveryDate : <asp:TextBox ID="TextBox6" runat="server" CssClass="aa"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <hr Class="hr" />
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style4" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="PAYMENT" />
    </form>
</body>
</html>
