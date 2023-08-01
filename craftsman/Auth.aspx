<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="craftsman.Auth" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <title><%: "Sign in" %> - Craftman</title>
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <!-- Favicon -->
    <link href="Asset/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="Asset/lib/animate/animate.min.css" rel="stylesheet">
    <link href="Asset/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="Asset/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="Asset/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="Asset/css/style.css" rel="stylesheet">

	<style>
		
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');



h1 {
	font-weight: bold;
	margin: 0;
}

h2 {
	text-align: center;
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

 .form a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}


.button {
	border-radius: 20px;
	border: 1px solid #AB7442;
    background-color: #AB7442;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

.button:active {
	transform: scale(0.95);
}

.button:focus {
	outline: none;
}

.button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

.form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

.input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.container {
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.sign-up-container {
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
	animation: show 0.6s;
}

@keyframes show {
	0%, 49.99% {
		opacity: 0;
		z-index: 1;
	}
	
	50%, 100% {
		opacity: 1;
		z-index: 5;
	}
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.container.right-panel-active .overlay-container{
	transform: translateX(-100%);
}

.overlay {

    background: linear-gradient(to right, #583e26, #ab7442);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
  	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
  	transform: translateX(50%);
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.overlay-right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.overlay h1 {
	color:white;		
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}

footer {
    background-color: #222;
    color: #fff;
    font-size: 14px;
    bottom: 0;
    position: fixed;
    left: 0;
    right: 0;
    text-align: center;
    z-index: 999;
}

/*footer p {
    margin: 10px 0;
}

footer i {
    color: red;
}

footer a {
    color: #3c97bf;
    text-decoration: none;
}*/

	</style>
</head>
<body>
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="Default.aspx" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary">HerAfy</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="Default.aspx" class="nav-item nav-link active">Home</a>
                <a href="About.aspx" class="nav-item nav-link">About</a>
                <a href="service.aspx" class="nav-item nav-link">Service</a>
                <!--<a href="project.aspx" class="nav-item nav-link">Project</a> -->
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">More</a>
                    <div class="dropdown-menu fade-up m-0">
                        <a href="Feature.aspx" class="dropdown-item">Feature</a>
                        <a href="Team.aspx" class="dropdown-item">Our Team</a>
                        <!-- <a href="Quote.aspx" class="dropdown-item">Free Quote</a>
                        <a href="Testimonial.aspx" class="dropdown-item">Testimonial</a>
                        <a href="ERROR404.aspx" class="dropdown-item">404 Page</a>-->
                    </div>
                </div>
                
            </div>
            <a href="Contact.aspx" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Support<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->
    
   
       <div class="container mt-4" id="container" >
           <form runat="server">
               <div class="form-container sign-up-container">
                   <div class="form">
                       <h1>Create Account</h1>
                       <div class="social-container">
                           <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                           <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                           <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                       </div>
                       <span>or use your email for registration</span>
                       <asp:TextBox ID="TextBox1" runat="server" CssClass="input"></asp:TextBox>
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="input"></asp:TextBox>
                       <asp:TextBox ID="TextBox3" runat="server" CssClass="input"></asp:TextBox>
                       <asp:TextBox ID="TextBox4" runat="server" CssClass="input"></asp:TextBox>

                      
                       <asp:Button ID="Sign_UP" runat="server" Text="SignUp" CssClass="button"/>

                   </div>
               </div>
               <div class="form-container sign-in-container">
                   <div class="form">
                       <h1>Sign in</h1>
                       <div class="social-container">
                           <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                           <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                           <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                       </div>
                       <span>or use your account</span>
                       <asp:TextBox ID="TextBox5" runat="server" CssClass="input"></asp:TextBox>
                       <asp:TextBox ID="TextBox6" runat="server" CssClass="input"></asp:TextBox>

                       <asp:Button ID="Sign_In" runat="server" Text="Sign In" CssClass="button" />
                       <%--<input type="email" placeholder="Email" />
			<input type="password" placeholder="Password" />--%>
                       <a href="#">Forgot your password?</a>

                   </div>
               </div>
           </form>
          <div   class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button id="signIn"  class="button ghost">Sign In</button>
                       
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button id="signUp"  class=" button ghost" >Sign In</button>
                      
                    </div>
                </div>
            </div>
        </div>
    

    <!-- Back to Top     
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
    -->


    <!-- JavaScript Libraries -->
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

    <script src="Asset/lib/wow/wow.min.js"></script>
    <script src="Asset/lib/easing/easing.min.js"></script>
    <script src="Asset/lib/waypoints/waypoints.min.js"></script>
    <script src="Asset/lib/counterup/counterup.min.js"></script>
    <script src="Asset/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="Asset/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="Asset/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="Asset/js/main.js"></script>
	<!-- Page JavaScript -->
	<script>
        $(document).ready(function () {
            const signUpButton = document.getElementById("signUp");
            const signInButton = document.getElementById("signIn");

            const container = document.getElementById('container');


            function handleSignUpClick() {                
                container.classList.add("right-panel-active");        
            }
            function handleSignUINClick() {
                container.classList.remove("right-panel-active");
            }

            signUpButton.addEventListener("click", handleSignUpClick);
            signInButton.addEventListener("click", handleSignUINClick);
        });
    </script>
  
</body>
</html>

