<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demolog.aspx.cs" Inherits="laundry.demolog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Slide Navbar</title>
  <style>
    body{
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	font-family: 'Jost', sans-serif;
	background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
	}
	.main{
		width: 350px;
		height: 500px;
		background: red;
		overflow: hidden;
		background: url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
		border-radius: 10px;
		box-shadow: 5px 20px 50px #000;
	}
	#chk{
		display: none;
	}
	.signup{
		position: relative;
		width:100%;
		height: 100%;
		
	}
	label{
		color: #fff;
		font-size: 2.3em;
		justify-content: center;
		display: flex;
		margin: 60px;
		font-weight: bold;
		cursor: pointer;
		transition: .5s ease-in-out;
	}
	.input{
		width: 60%;
		height: 18px;
		background: #e0dede;
		justify-content: center;
		display: flex;
		margin: 8px auto;
		padding: 10px;
		border: none;
		outline: none;
		border-radius: 5px;
	}
	.inputt{
		width: 60%;
		height: 20px;
		background: #e0dede;
		justify-content: center;
		display: flex;
		margin: 20px auto;
		padding: 10px;
		border: none;
		outline: none;
		border-radius: 5px;
	}
	input{
		width: 60%;
		height: 20px;
		background: #e0dede;
		justify-content: center;
		display: flex;
		margin: 20px auto;
		padding: 10px;
		border: none;
		outline: none;
		border-radius: 5px;
	}
	.button{
		width: 60%;
		height: 40px;
		margin: 10px auto;
		justify-content: center;
		display: block;
		color: #fff;
		background: #573b8a;
		font-size: 1em;
		font-weight: bold;
		margin-top: 11px;
		outline: none;
		border: none;
		border-radius: 5px;
		transition: .2s ease-in;
		cursor: pointer;
	}
	.button:hover{
		background: #6d44b8;
	}
	.login{
		height: 460px;
		background: #eee;
		border-radius: 60% / 10%;
		transform: translateY(-170px);
		transition: .8s ease-in-out;
	}
	.login label{
		color: #573b8a;
		transform: scale(.6);
	}

	#chk:checked ~ .login{
		transform: translateY(-500px);
	}
	#chk:checked ~ .login label{
		transform: scale(1);	
	}
	#chk:checked ~ .signup label{
		transform: scale(.6);
	}


  </style>
 <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">  	
	   <input type="checkbox" id="chk" aria-hidden="true">
			
		<div class="signup"><form>
		<div style="margin-top:-25px;">
				<div><label for="chk" aria-hidden="true">Sign up</label></div>
				<div style="margin-top:-54px;">
				<asp:TextBox ID="TextBox1" CssClass="input" runat="server" type="text" name="txt" placeholder="name" ></asp:TextBox>
				
				<asp:TextBox ID="TextBox2" CssClass="input" runat="server" type="text" name="email" placeholder="address" ></asp:TextBox>
				
				<asp:TextBox ID="TextBox3" CssClass="input" runat="server" type="number" name="pswd" placeholder="phone" ></asp:TextBox>

				<asp:TextBox ID="TextBox7" CssClass="input" runat="server" type="email" name="email" placeholder="Email" ></asp:TextBox>
                <asp:TextBox ID="TextBox6" CssClass="input" runat="server" type="text" name="txt" placeholder="User name" ></asp:TextBox>
				<asp:TextBox ID="TextBox8" CssClass="input" runat="server" type="password" name="pswd" placeholder="Password" ></asp:TextBox>

				<asp:Button ID="Signup" CssClass="button" runat="server" Text="Sign up" OnClick="Signup_Click"></asp:Button>
				</div>
			    </div>
			</form>
		</div>

		<div class="login">
		
				<label for="chk" aria-hidden="true">Login</label>
				
				<asp:TextBox ID="TextBox4" CssClass="inputt" runat="server" type="Text" name="email" placeholder="User name" ></asp:TextBox>
				<asp:Button ID="Login" CssClass="button"  runat="server" Text="Login" OnClick="Login_Click"></asp:Button>
				<asp:TextBox ID="TextBox5" CssClass="inputt" runat="server" type="password" name="pswd" placeholder="Password" ></asp:TextBox>
				
				<asp:Label ID="Label1" runat="server"></asp:Label>
		
		</div>
</div>
		
    </form>
</body>
</html>
