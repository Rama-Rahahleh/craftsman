<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="craftsman.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <style>
       *{
	font-family: sans-serif;
}
body{
	background-image: linear-gradient(rgba(0, 0, 0, 0.23),rgba(0, 0, 0, 0.24)) ,url('https://bia.lighting/wp-content/uploads/2016/04/Sign-Up-Background.png');
	background-size: cover;	 
}
.datalist
{
background-color: black;
color:white;	
}
.aclk{
	color:  orange;
	text-decoration: none;
}
.aclk:hover{
	color:green ;
}
h1{
	text-align: center;
	color: orange;
	font-weight: 50px;
	font-family: sans-serif;
}
h1:hover{
	color: white;

}
.form{
		max-width: 400px;
		background: rgba(0, 0, 0, .57);
		border-radius: 20px;
		box-sizing: border-box ;
		padding: 40px;
		margin: auto;
		color: white;
		margin-top: 100px;	
		margin-bottom: 50px;
}
input[type=text],input[type=password]{
	width: 100%;
	border-radius: 10px;
	box-sizing: border-box;
	background:black;
	border: none;
	font-weight: 500;
	font-size: 16px;
	outline: none;
	border-bottom: 1px solid white;
	margin: 6px;
	color: white;
	padding: 12px 5px;
}
input[type=radio]{
	padding: 12px 5px;
	margin: 5px;
	margin-top: 15px;
	color: white;
	background-color: black;
}
button{
	cursor: pointer;
	width: 200px;
	margin-top: 25px;
	margin-left: 60px;
	border-radius: 18px;
	font-size: 25px;
	background-color: orange;
	outline: none;
	border:none;
	box-sizing: border-box;
	padding: 5px;
	transition-duration:0.4s;
}
button:hover{
	background-color: black;
	color: orange;
	border: 1px solid orange;
}
.rad{
	font-weight: 400;
	text-align: center;
	margin: 15px;
	margin-top: 20px;
	color: white;
}
select{
	width: 100%;
	border-radius: 10px;
	box-sizing: border-box;
	border: none;
	outline: none;
	font-weight: 100;
	font-size: 16px;
	border-bottom: 1px solid white;
	margin: 5px;
	color: white;
	background-color: black;
	padding:12px 5px;
}
.selq{
	width: 100%;
	border-radius: 10px;
	box-sizing: border-box;
	background:black;
	border: none;
	font-weight: 500;
	font-size: 16px;
	outline: none;
	border-bottom: 1px solid white;
	margin: 6px;
	color: gray;
	padding: 12px 5px;	
}

.aclk {
	 text-decoration: underline;
}
.aclk a{
	 text-align: center;
}


    </style>

		<div class="form">
			
			<h1> Signup Here!</h1>

			<form action="" method="get" accept-charset="utf-8">
				<input type="text"  name=""  placeholder="name"><br>
				<input type="text"  name=""  placeholder="Email"><br>
				<input type="password"  name=""  placeholder="password"><br>
				<input type="text"  name=""  placeholder="age"><br>
				<input type="text"  name=""  placeholder="address"><br>
				<input type="text"  name=""  placeholder="phone"><br>
				
				<br>
				<select  name="countries" class="datalist">
					<datalist id="countries">
					<option class="selp" value="none">Select Your Country</option>
					<option class="selq" value="India">India</option>
					<option class="selq" value="Australia">Australia</option>
					<option class="selq" value="new zealand">new zealand</option>
					<option class="selq" value="England">England</option>
					<option class="selq" value="America">America</option>
					<option class="selq" value="China">China</option>
				</datalist></select>
				<select name="questioon">
					<option class="selp" value="none">Select a secret question </option>
					<option class="selq" value="1">what is your nickname ?</option>
					<option class="selq" value="2">what is your best friend's name ?</option>
					<option class="selq" value="3">what is your favourite game ?</option>
				</select>
				<input type="radio" name="gender" value="male" checked><span class="rad">Male</span>
				<input type="radio" name="gender" value="female"> <span class="rad">Female</span>
				<input type="radio" name="gender" value="other">
				<span class="rad">Other</span>
				<button>Sign Up</button>
				<br />
				<a class="aclk" href="Login.aspx">Already have account ?</a>
			</form>
		</div>
</asp:Content>



