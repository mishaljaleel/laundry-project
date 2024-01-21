<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add items.aspx.cs" Inherits="laundry.add_items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 36%;
        }
        .auto-style2 {
            width: 161px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">item</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">drycleaning</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">washing</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">ironing</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td>
                
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                
            </td>
        </tr>
    </table>
    
    </center>
        <div>
        </div>
    </form>
</body>
</html>
