<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="laundry.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 70px;
            left: 97px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 72px;
            left: 10px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 116px;
            left: 10px;
            z-index: 1;
            bottom: 677px;
        }
        .auto-style5 {
            position: absolute;
            top: 164px;
            left: 10px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 115px;
            left: 97px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 395px;
            left: 60px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 212px;
            left: 10px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 164px;
            left: 97px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 254px;
            left: 10px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 214px;
            left: 97px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 253px;
            left: 97px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 302px;
            left: 100px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 305px;
            left: 11px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="name"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="address"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="phone"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Submit" />
        <p>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="email"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style13" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text="username"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style14" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style15"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style16" Text="password"></asp:Label>
    </form>
</body>
</html>
