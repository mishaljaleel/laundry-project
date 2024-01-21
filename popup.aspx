<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="laundry.popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	
	<link href="http://infiniteiotdevices.com/images/logo.png" rel="icon" sizes="16x16" type="image/gif" />
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
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
		.bg
{
	margin: 0 auto;
	padding: 0 auto;
	height: 100vh;
	background: linear-gradient(45deg,#FC354C, #0ABFBC);
	background-size: cover;
	font-family: sans-serif;
	
}
#ImageButton1{
	position:absolute;
	margin-left:-169px;
	margin-top:40px;
}
#ImageButton2{
	position:absolute;
	margin-left:-169px;
	margin-top:170px;
}
#ImageButton3{
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
/*.loginBox input[type="submit"]
{
	border:none;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 14px;
	background: linear-gradient(45deg,#FC354C, #0ABFBC);
	cursor: pointer;
	border-radius: 20px;
}*/
/*.loginBox input[type="submit"]:hover
{
	background: linear-gradient(45deg,#0ABFBC, #FC354C);
}*/
/*.loginBox .a
{
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}*/
/*.loginBox h5
{
	margin: 0;
	padding: 15px 0 0 0;
	text-align: center;
	color: #fff;
}
.loginBox h4
{
	margin: 0;
	padding: 30px;
	text-align: center;
	color: #fff;
}
.loginBox h4 a
{
	text-decoration: none;
	color: #BE5869;
}
ul
{
	margin: 0;
	padding: 0;
	display: flex;
}
ul li
{
	list-style: none;
	float: left;
	top: 10px;
	left: 65px;
	margin: 10px;
	width: 50px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: #fff;
	font-size: 40px;
	border-radius: 20%;
	position: relative;
	transition: .5s ease-in-out;
	z-index: 1;
}
ul li a
{
	font-size: 35px;
}
ul li .facebook
{
	color: #3b5999; 
}

ul li .google
{
	color: #dd4b39;
}

ul li a:before
{
	content: '';
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	border-radius: 20%;
	transform: scale(0);
	transition: .5s ease-in-out;
	z-index: -1;
}
ul li a:before
{
	background:linear-gradient(45deg,#FC354C, #0ABFBC); 
}
ul li a:hover:before
{
	transform: scale(.9);
}
ul li a:hover
{
	color: #fff;
}
.txt2:hover
{
	color: black;
}*/

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
	    .auto-style1 {
            position: absolute;
            top: 200px;
            left: 178px;
        }
        .auto-style2 {
            position: absolute;
            top: 225px;
            left: 178px;
			width: 50px;
        }
		 .auto-style3 {
     position: absolute;
     top: 330px;
     left: 178px;
 }
 .auto-style4 {
     position: absolute;
     top: 355px;
     left: 178px;
	 width: 50px;
 }
  .auto-style5 {
     position: absolute;
     top: 460px;
     left: 178px;
 }
 .auto-style6 {
     position: absolute;
     top: 485px;
     left: 178px;
	 width: 50px;
 }
 .auto-style7 {
    position: absolute;
    top: 565px;
    left: 270px;
    opacity: 50%;
    filter: drop-shadow(2px 2px 2px black);
    border: none;
    border-radius: 7px;
}
	</style>
</head>

<body>
	
    <form id="form1" runat="server">
    
		<div class="bg">

            <asp:Label ID="Label5" runat="server"></asp:Label>

</div>
	<div class="loginBox">
		
		<h2>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h2>
		<form>
			<p>Qty</p>
			<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
			<asp:ImageButton ID="ImageButton1" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton1_Click" />
			<asp:Label ID="Label2" runat="server" Text="Drycleaning & Ironing" CssClass="auto-style1" style="z-index: 1"></asp:Label>
			<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" style="z-index: 1" ></asp:TextBox>
            <asp:ImageButton ID="ImageButton2" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton2_Click" />
			<asp:Label ID="Label3" runat="server" Text="Washing & Ironing" CssClass="auto-style3" style="z-index: 1"></asp:Label>
			<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" style="z-index: 1" ></asp:TextBox>
            <asp:ImageButton ID="ImageButton3" CssClass="img" runat="server"  ImageUrl="~/shirtt.jpg" OnClick="ImageButton3_Click"/>
            <asp:Label ID="Label4" runat="server" Text="Ironing" CssClass="auto-style5" style="z-index: 1"></asp:Label> 
			<asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style6" style="z-index: 1" ></asp:TextBox>
			<asp:Button ID="Button1" runat="server" Text="Close" CssClass="auto-style7" />
		</form>
	</div>

    </form>
</body>
</html>
