<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getdate.aspx.cs" Inherits="laundry.getdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
            position: absolute;
            margin-left: 650px;
            margin-top: 70px;
            left: -55px;
            top: 56px;
            bottom: 414px;
        }
        .auto-style2 {
            width: 253px;
        }
        .auto-style3 {
            width: 645px;
        }
        .main
        {
            display:flex;
            height:99.5vh;
    
        }
        .secdiv{
            
            width:60%;
        }
        .auto-style4 {
            width: 253px;
            height: 58px;
        }
        .auto-style5 {
            width: 645px;
            height: 58px;
        }
        .auto-style6 {
            position: absolute;
            top: 696px;
            left: 302px;
            z-index: 1;
            width: 473px;
        }
        
        
        .auto-style8 {
            width: 800px;
            height: 178px;
            position: absolute;
            top: 400px;
            left: 520px;
            z-index: 1;
            text-align: center;
        }
    </style>
</head>
<body style="width: 829px">
    <form id="form1" runat="server">
        <div class="main">
        <div class="maindiv" style="width:40%; background: linear-gradient(45deg,#FC354C, #0ABFBC);"></div>
        <div class="secdiv">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Select pickup Date :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px" TextMode="DateTimeLocal" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Address :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="396px" Height="82px"></asp:TextBox>
                    </td>
                </tr> 
                 <tr>
                     <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">Pincode : </td>
                     <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="auto-style7"></asp:TextBox>
                     </td>
                 </tr>
            </table>
        </div>
            <asp:GridView ID="GridView1" runat="server"  CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="item" CssClass="auto-style8" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
  <Columns>
      <asp:BoundField DataField="order" HeaderText="ItemNo" ReadOnly="True" />
      <asp:BoundField DataField="item" HeaderText="Item" ReadOnly="True" />
      <asp:BoundField DataField="qty" HeaderText="Qty" />
      <asp:BoundField DataField="type" HeaderText="Type" ReadOnly="True" />
      <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" />
      <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
  </Columns>
  <EditRowStyle BackColor="#999999" BorderStyle="Dashed" />
  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
  <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
  <SortedAscendingCellStyle BackColor="#E9E7E2" />
  <SortedAscendingHeaderStyle BackColor="#506C8C" />
  <SortedDescendingCellStyle BackColor="#FFFDF8" />
  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
       </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="NEXT" />
    </form>
</body>
</html>
