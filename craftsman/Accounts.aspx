<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="craftsman.Accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     

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

        .Accountcontainer {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
            position: relative;
            overflow: hidden;
            width: 768px;
            max-width: 100%;
            min-height: 560px;
            margin: 2% auto
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
            /*z-index: 2;*/
        }

        /*.container.right-panel-active .sign-in-container {
			transform: translateX(100%);
		}*/

        .sign-up-container {
            left: 0;
            width: 50%;
            /*opacity: 0;*/
            /*z-index: 1;*/
        }

        .Accountcontainer.right-panel-active .sign-up-container {
            transform: translateX(100%);
            /*opacity: 1;*/
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

        .Accountcontainer.right-panel-active .overlay-container {
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

        .Accountcontainer.right-panel-active .overlay {
            /*transform: translateX(50%);*/
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
            /*transform: translateX(-20%);*/
        }

        .Accountcontainer.right-panel-active .overlay-left {
            /*transform: translateX(0);*/
        }

        .overlay-right {
            right: 0;
            transform: translateX(0);
        }

        .Accountcontainer.right-panel-active .overlay-right {
            /*transform: translateX(20%);*/
        }

        .overlay h1 {
            color: white;
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
        /*
		footer p {
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



    <div class=" container Accountcontainer " runat="server" id="SignINDIV">

        <div class="form-container sign-in-container">
            <div class="form">
                <h1>Sign in</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>or use your account</span>


                <asp:TextBox ID="useremail" runat="server" CssClass="input" ValidationGroup="sign" placeholder="Enter your email"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ErrorMessage="Please give Email Address! "
                    ControlToValidate="useremail"
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
                    ForeColor="Red"
                    Display="Dynamic"
                    ValidationGroup="sign">
                </asp:RegularExpressionValidator>

                <asp:TextBox ID="userpassword" runat="server" CssClass="input" placeholder="Enter your password"></asp:TextBox>

                <asp:Label ID="ErrorMessageLabel1" runat="server" ForeColor="Red" Disply="Dynamic" Text="" Visible="false"></asp:Label>

                <asp:Button ID="Sign_In" runat="server" Text="Sign In" CssClass="button" ValidationGroup="sign" OnClick="Sign_In_Click" />

                <a href="#">Forgot your password?</a>

            </div>
        </div>

        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <asp:Button ID="signIn" runat="server" CssClass="button ghost"
                        ValidationGroup="sign"
                        OnClick="signIn_Click" Text="Sign Up"></asp:Button>

                         <asp:Literal ID="Literal2" runat="server"  Visible="false"></asp:Literal>


                </div>
            </div>
        </div>
    </div>

    <div class=" container Accountcontainer" runat="server" id="SignUpDiv" visible="false">
        <div class="form-container sign-up-container">
            <div class="form">
                <h1>Create Account</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>or use your email for registration</span>

                <asp:TextBox ID="email" runat="server" CssClass="input" placeholder="Enter your email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfemail" runat="server"
                    ErrorMessage="Please enter email"
                    ControlToValidate="email"
                    Display="Dynamic" ForeColor="red"
                    ValidationGroup="create"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="rgemail" runat="server"
                    ErrorMessage="Please give Email Address! "
                    ControlToValidate="email"
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
                    ForeColor="Red"
                    Display="Dynamic"
                    ValidationGroup="create">
                </asp:RegularExpressionValidator>


                <asp:TextBox ID="username" runat="server" CssClass="input" placeholder="Enter your username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfusername" runat="server"
                    ErrorMessage="Please enter user name"
                    ControlToValidate="username"
                    Display="Dynamic" ForeColor="red"
                    ValidationGroup="create">
                </asp:RequiredFieldValidator>


                <asp:TextBox ID="phone" runat="server" CssClass="input" placeholder="Enter your phone number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfphone"
                    runat="server"
                    ErrorMessage="Please enter phone"
                    ControlToValidate="phone"
                    Display="Dynamic" ForeColor="red"
                    ValidationGroup="create">
                </asp:RequiredFieldValidator>

                <asp:TextBox ID="password" runat="server" CssClass="input" placeholder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfpassword"
                    runat="server"
                    ErrorMessage="Please enter password"
                    ControlToValidate="password"
                    Display="Dynamic" ForeColor="red"
                    ValidationGroup="create">
                </asp:RequiredFieldValidator>

                <asp:Label ID="ErrorMessageLabel" runat="server" ForeColor="Red" ValidationGroup="create"></asp:Label>

                <asp:Button ID="Sign_UP" runat="server" Text="Sign Up"
                    ValidationGroup="create"
                    CssClass="button" OnClick="Sign_UP_Click" />
             
                <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
            
                
            </div>
            <div class="mt-3">
                <asp:Literal ID="ltResult" runat="server"></asp:Literal>
            </div>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <asp:Button ID="signUp" runat="server" CssClass=" button ghost" OnClick="signUp_Click" Text="Sign IN"></asp:Button>

                </div>
            </div>
        </div>
    </div>
    
    <div id="Popup" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <p id="msg" runat="server"></p>
        <button type="button" class="btn btn-secondary close" data-dismiss="modal" >Ok</button>
      </div>
    </div>
  </div>
</div>
    <!-- Popup Model Script -->
  <script>
        
      function OpenPopUp() {
          
          $("#Popup").modal('show');
      }
  </script>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</asp:Content>