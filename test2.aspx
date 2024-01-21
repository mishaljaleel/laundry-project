<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="laundry.test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 173px;
            left: 160px;
            z-index: 1;
            height: 100px;
            width: 200px;
        }
        .auto-style2 {
            position: absolute;
            top: 73px;
            left: 278px;
            z-index: 1;
            height: 100px;
            width: 200px;
        }
        .modal-body{
            height:277px;
        }
        .auto-style3 {
            position: absolute;
            top: 73px;
            left: 50px;
            z-index: 1;
            height: 100px;
            width: 200px;
        }
        .auto-style4 {
            position: absolute;
            top: 39px;
            left: 50px;
            z-index: 1;
            right: 1244px;
        }
        .auto-style5 {
            position: absolute;
            top: 194px;
            left: 368px;
            z-index: 1;
            right: 929px;
            width: 34px;
        }
        .auto-style6 {
            position: absolute;
            top: 194px;
            left: 147px;
            z-index: 1;
            right: 1150px;
            width: 34px;
        }
        .auto-style7 {
            position: absolute;
            top: 297px;
            left: 260px;
            z-index: 1;
            width: 34px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
      

        <asp:Button ID="Button4" class="btn btn-primary" runat="server" Text="Button" OnClick="Button4_Click" data-toggle="modal" data-target="#exampleModal" OnClientClick="return false" />
   <asp:ImageButton ID="ImageButton1" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton1_Click" data-toggle="modal" data-target="#exampleModal" OnClientClick="return false" />
                
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <asp:Button ID="Button1" runat="server" Text="drycleaning&ironing" CssClass="auto-style3" />
 <asp:Button ID="Button2" runat="server" Text="Washing&amp;ironing" CssClass="auto-style2" />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qty<br />
 <asp:Button ID="Button3" runat="server" Text="Ironing" CssClass="auto-style1" />
 <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="100px"></asp:TextBox>
    
      </div>
      <div class="modal-footer">
          <asp:Button ID="Button5" runat="server" Text="Close" />
          <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style7"></asp:TextBox>
           <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5"></asp:TextBox>
          <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style6"></asp:TextBox>
      </div>
    </div>
  </div>
</div>
  
         
       
      
  
         
    </form>
</body>
</html>
