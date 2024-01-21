<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laundryhome.aspx.cs" Inherits="laundry.laundryhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        .img {
            width: 100px;
            margin-top:-806px;
            border-radius: 15px;
            box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.2);
            transition:  0.3s ease-in-out;
            height:115px;
          }
        .img:hover {
            transform: scale(1.05);
          }
    .modal-body{
        height:277px;
    }
    .iframe{
        overflow:hidden ;
    }
           .main
       {
           display:flex;
           height:99.5vh;
           
       }
/*          .bg{ 
	margin: 0 auto;
	padding: 0 auto;
	height: 100vh;
	background: linear-gradient(45deg,#FC354C, #0ABFBC);
	background-size: cover;
	font-family: sans-serif;
   
	
}*/
#ImageButton6{
	position:absolute;
	margin-left:-169px;
	margin-top:40px;
}
#ImageButton7{
	position:absolute;
	margin-left:-169px;
	margin-top:170px;
}
#ImageButton8{
	position:absolute;
	margin-left:-169px;
	margin-top:300px;
}
.loginBox
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 350px;
	height: 600px;
	padding: 40px;
	border-radius: 10px;
	box-sizing: border-box;
	background: rgba(255,255,255,.3);
	background-position: center;
    margin-left:-570px;
}
.user
{
	width: 100px;
	height: 100px;
	border-radius: 50%;
	overflow: hidden;
	position: absolute;
	top: calc(-100px/2);
	left: calc(70% - 35%);
}
h2
{
	margin: 0;
	padding: 30px 0 40px;
	color: #BE5869;
	text-align: center;
}
.loginBox p
{
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
	margin-top: -28px;
}

.loginBox input[type="text"],
.loginBox input[type="password"]
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	color: #fff;
	font-size: 16px;
}
::placeholder
{
	color: rgba(255,255,255,.5);
}


@media screen and (max-width: 988px)
{
	.loginBox
	{
		width: 350px;
		height: 600px;
	}
}
@media screen and (max-width: 640px)
{
	.loginBox
	{
		width: 350px;
		height: 600px;
		right: 10px;
	}
}
@media screen and (max-width: 320px)
{
	.loginBox
	{
		right: 10px;
		width: 320px;
		height: 600px;
	}
}
	    .auto-style11 {
            position: absolute;
            top: 200px;
            left: 178px;
        }
        .auto-style21 {
            position: absolute;
            top: 225px;
            left: 178px;
			width: 50px;
        }
		 .auto-style31 {
     position: absolute;
     top: 330px;
     left: 178px;
 }
 .auto-style41 {
     position: absolute;
     top: 355px;
     left: 178px;
	 width: 50px;
 }
  .auto-style51 {
     position: absolute;
     top: 460px;
     left: 178px;
 }
 .auto-style61 {
     position: absolute;
     top: 485px;
     left: 178px;
	 width: 50px;
 }
        .auto-style71 {
            position: absolute;
            top: 565px;
            left: 270px;
            opacity: 50%;
            filter: drop-shadow(2px 2px 2px black);
            border: none;
            border-radius: 7px;
  
        }
}
  .auto-style71:hover {
    transform: scale(1.05);
          }
  #GridView1{
    position: absolute;
    margin-left: 13px;
    margin-top: -620px;
    width: 28%;
    text-align: center;
    opacity: 80%;
 
}

        .auto-style72 {
            width: 339px;
            height: 22px;
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        .hidden {
            position: absolute;
            margin-top: -42px;
            height: 39px;
            width: 454px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
         <div class="mainchild" style="width:30%; background: linear-gradient(45deg,#FC354C, #0ABFBC);">
     <iframe name="iframe_a" style="width:100%;height:99.5%; " >
  
     </iframe>
             		<div class="auto-style72">

            <asp:Label ID="Label5" runat="server"></asp:Label>

</div>
                       <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="item" >
                           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                           <Columns>
                               <asp:BoundField DataField="item" HeaderText="Item" />
                               <asp:BoundField DataField="qty" HeaderText="Qty" />
                               <asp:BoundField DataField="type" HeaderText="Type" />
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
	<div class="loginBox" id="log" style="display:none;">
		
		<h2>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h2>
		<form>
			<p>Qty</p>
			<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
			<asp:ImageButton ID="ImageButton6" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton6_Click" />
			<asp:Label ID="Label2" runat="server" Text="Drycleaning & Ironing" CssClass="auto-style11" style="z-index: 1"></asp:Label>
			<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style21" style="z-index: 1" ></asp:TextBox>
            <asp:ImageButton ID="ImageButton7" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton7_Click" />
			<asp:Label ID="Label3" runat="server" Text="Washing & Ironing" CssClass="auto-style31" style="z-index: 1"></asp:Label>
			<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style41" style="z-index: 1" ></asp:TextBox>
            <asp:ImageButton ID="ImageButton8" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton8_Click"/>
            <asp:Label ID="Label4" runat="server" Text="Ironing" CssClass="auto-style51" style="z-index: 1"></asp:Label> 
			<asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style61" style="z-index: 1" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Close" CssClass="auto-style71" OnClick="Button1_Click"/>
		</form>
	</div>
      <asp:Button ID="Button2" runat="server" Text="NEXT"  CssClass="hidden" OnClick="Button2_Click"/>
 </div>
            <div style=" width:70%; background-color:azure;" > 
                
                <div style="display:flex; gap:50px; margin-left: 240px;margin-top:1000px;position:absolute;">
                   
                <asp:ImageButton ID="ImageButton1" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton1_Click"   />
                 <asp:ImageButton ID="ImageButton2" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton2_Click" />
                  <asp:ImageButton ID="ImageButton3" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton3_Click" />
                 <asp:ImageButton ID="ImageButton4" CssClass="img" runat="server" ImageUrl="~/shirtt.jpg" OnClick="ImageButton4_Click" />
                <asp:ImageButton ID="ImageButton5" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton5_Click" />
                  </div>   
</div>
            </div>
        <script> function imgbtn() { } </script>



    </form>
</body>

</html>
