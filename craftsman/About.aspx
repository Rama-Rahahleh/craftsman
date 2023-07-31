﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="craftsman.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap");



section {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  width: 100%;

  background: #efd8c3;
}

.content {
  display: flex;
  flex-direction: row;
  width: 750px;
  height: 460px;
  border-radius: 10px;

  background: #fff;
}

.left {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 250px;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;

  background: url("https://i.postimg.cc/vmK4vkf0/neon-bg.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.left img {
  width: 100px;
}

.left h1 {
  margin-top: 10px;
  font-size: 3em;
  font-weight: 100;
  font-family: "Bebas Neue", sans-serif;
  color: #fff;
}

.right {
  margin: 20px auto;
  padding: 10px;
}

.inputbox {
  margin: 8px 0px;
  width: 350px;
  height: fit-content;
}

input {
  margin-top: 4px;
  padding: 5px;
  width: 100%;
  height: 28px;
  text-indent: 9px;
  border: none;
  border-radius: 2px;

  background: rgba(128, 128, 128, 0.2);
}

input:hover {
  box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.5);
}

.right .title h2 {
  text-align: center;
  font-size: 1.8em;
  margin-bottom: 20px;
}

.inputbox label {
  font-size: 1em;
}

input::placeholder {
  text-indent: 10px;
}

.create {
  display: flex;
  justify-content: center;
  width: 360px;
}

.create button {
  margin-top: 5px;
  width: 250px;
  height: 35px;
  border: none;
  border-radius: 25px;

  color: #fff;
  background: #000;
}

.additional p {
  margin-top: 5px;
  font-size: 11px;
  text-align: center;
}

.additional p span {
  color: blue;
}

.additional p span:hover {
  text-decoration: underline;
}

.or {
  margin-top: 10px;
  font-size: 1em;
  text-align: center;
}

.sign {
  display: flex;
  justify-content: space-around;
  margin-top: 15px;
}

button {
  width: 160px;
  height: 35px;
  padding: 5px;
  border-radius: 25px;

  background: none;
  border: 2px solid #000;
}
/* Responsiveness:Start */
@media screen and (max-width: 780px) {
  .content {
    flex-direction: column;
    width: 400px;
    height: fit-content;
    margin: 20px auto;
  }
  .left {
    height: 250px;
    width: 100%;
    border-radius: 0px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
  }
}
@media screen and (max-width: 425px) {
  .content {
    width: 100%;
    margin: 0px;
    border-radius: 0px;
  }
  .left {
    width: 100%;
    border-radius: 0px;
  }
}
/* Responsiveness:End */

    </style>
<section>
  <div class="content">

    <div class="left">
      <img src="https://i.postimg.cc/8CCmX23W/icon.png" alt="icon">
      <h1>VIBELY</h1>
    </div>

    <div class="right">
      <div class="title">
        <h2>Welcome to Vibely</h2>
      </div>
      <div class="form">
        <form>
          <div class="inputbox">
            <label>Full Name</label>
            <input type="text" placeholder="Enter your Name" required>
          </div>
          <div class="inputbox">
            <label>Email</label>
            <input type="email" placeholder="Enter your Email ID" required>
          </div>
          <div class="inputbox">
            <label>Password</label>
            <input type="password" placeholder="Enter your Password" required>
          </div>
          <div class="create">
            <button type="submit">Create Account</button>
          </div>
          <div class="additional">
            <p>Already have an account ? <span>Log In</span></p>
          </div>
        </form>
        <div class="or">
          <h3>OR</h3>
          <div class="sign">
            <button>
              <ion-icon name="logo-google"></ion-icon> <span>Sign Up with Google</span>
            </button>
            <button>
              <ion-icon name="logo-github"></ion-icon> <span>Sign Up with GitHub</span>
            </button>
          </div>
        </div>
      </div>
    </div>

  </div>
</section>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</asp:Content>
