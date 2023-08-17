﻿<%@ Page Title="Reviews" Language="C#" MasterPageFile="~/Admin/AdminNested.master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="craftsman.Admin.Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        * {
  box-sizing: border-box;
  outline: none;
}
body {
  margin: 0;
  font-family: Sans-serif;
  overflow: hidden;
}
.dashboard {
  height: 100vh;
  display: flex;
}

.page-wrapper .page-content > div {
  padding: 20px 40px;
  margin-top: -3%;
  margin-left: 10%;
        }
.left {
  height: 100%;
  display: flex;
}
.sidebar {
  width: 80px;
  height: 100%;
  background-image: linear-gradient(
    -225deg,
    #5271c4 0%,
    #b19fff 48%,
    #eca1fe 100%
  );
  display: flex;
}
.wrapper {
  padding: 0 25px;
  height: 100vh;
  display: flex;
  flex-direction: column;
}

.items {
  margin-top: 50px;
}

.items > img {
  margin-bottom: 25px;
}

.profile > img {
  border-radius: 50%;
  width: 305x;
  height: 35px;
  border: 1px solid white;
}
.profile {
  margin-top: auto;
}
.menu {
  margin-top: 20px;
}
.navigation {
  width: 270px;
  border-right: 1px solid #ddd;
}
.abilan > img {
  width: 120px;
  margin-bottom: 30px;
  margin-left: -8px;
}

.wrapper2 {
  padding: 0 25px;
  height: 100%;
  overflow: auto;
}

.compose {
  width: 150px;
  text-align: center;
  height: 50px;
  border-radius: 13px;
  border: 1px solid;
  background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);
  color: white;
  font-size: 16px;
  padding-left: 20px;
  position: relative;
}
.folders {
  margin-top: 30px;
  color: #b8b8b8;
  font-size: 14px;
}
.folder-icons {
  margin-top: 20px;
  display: flex;
  align-items: center;
}

.icon-name1 {
  margin-left: 10px;
  color: #8b47a9;
}

.icon-name {
  margin-left: 10px;
  color: grey;
}
.names {
  margin-left: 10px;
  font-weight: bold;
  font-size: 15px;
}

.avatar > img {
  width: 35px;
  border-radius: 10px;
}
.section1 {
  margin-top: 25px;
  margin-bottom: 10px;
}

.btn {
  border-radius: 3px;
  border: 1px;
  padding: 0 10px 0 30px;
  height: 30px;
  font-weight: bold;
  position: relative;
}

.buton1 {
  background-color: #f8f1ff;
  color: #a84bfe;
}
.buton2 {
  background-color: #fff1f6;
  color: #fe4b85;
}
.buton3 {
  background-color: #eef0ff;
  color: #2632fe;
}
.buton4 {
  background-color: #ebfbf8;
  color: #01c991;
}
.tag {
  position: absolute;
  left: 8px;
  top: 10px;
}
.plus > img {
  width: 16px;
  height: 16px;
}
.plus {
  left: 10px;
  position: absolute;
}
.buton-span {
  border-radius: 15px;
  padding: 5px 10px;
  border: 1px;
  color: white;
  background-color: #fe365c;
  box-shadow: 0px 0px 10px 2px #f7bfc9;
  margin-left: 70px;
}
.online {
  position: absolute;
  top: -5px;
  right: -5px;
  border: 4px solid #fbfcf8;
  box-sizing: unset;
  background-color: #02c997;
  width: 10px;
  height: 10px;
  border-radius: 50%;
}
.avatar {
  position: relative;
}
.red {
  background-color: #fe4663;
}

.big-inbox {
  font-size: 25px;
  font-weight: 500;
}
.right-side {
  background-color: #f2f3f7;
  width: 100%;
  padding: 8px 30px;
  display: flex;
  flex-direction: column;
}
.right-body {
  flex: 1;
  display: flex;
  overflow: hidden;
}
.top-bar {
  display: flex;
  align-items: center;
  text-align: center;
}
.top-bar-justify {
  display: flex;
  justify-content: space-between;
  width: 100%;
}
.top-bar-items {
  align-items: center;
  display: flex;
  justify-content: space-between;
  width: 180px;
}
.profile2 > img {
  border-radius: 50%;
  width: 28px;
  height: 28px;
  border: 2px solid white;
  margin-left: 25px;
  margin-right: 5px;
}
.profile2 {
  display: flex;
  align-items: center;

  width: 120px;
}
.icon-name5 {
  font-size: 13px;
  color: grey;
}
.new-hr {
  border: 0.6px solid #ddd;
  margin-bottom: 25px;
}
.notif {
  position: relative;
}
.pink {
  background-color: #fe96db;
  width: 7px;
  height: 7px;
  margin: -3px;
}

.checkbox > input {
  width: 20px;
  height: 20px;
}

.right-bottom {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.down-arrow > img {
  width: 12px;
  height: 14px;
  margin-bottom: -2px;
  margin-left: 5px;
}
.new:hover {
  background-color: white;
}
.new {
  border-radius: 4px;
  border: none;
  width: 40px;
  height: 30px;
  background-color: #edeef5;
}
.check {
  display: flex;
  align-items: center;
}
.has-search .text {
  padding-left: 30px;
  margin-left: 45px;
}
.form {
  display: flex;
  align-items: center;
}
.searchIcon {
  margin-left: 53px;
  position: absolute;
  margin-top: 2px;
}
.text {
  border: 1px solid #ddd;
  border-radius: 4px;
  width: 280px;
  height: 30px;
  background-color: #edeef5;
}
.buttons {
  display: flex;
}
.middle-buttons {
  display: flex;
}

.scroll-cards {
  width: 370px;
  height: 100%;
  overflow: auto;

  padding: 20px 0px 5px 0px;
}
.card {
  background-color: white;
  border-radius: 4px;
  margin-top: 8px;
  margin-bottom: 5px;
  padding: 25px 25px 15px 25px;
  transition: 0.3s;
}
.card:hover {
  box-shadow: 5px 1px 20px 1px #ddd;
  transform: scale(0.96);
}

.mail-names {
  color: grey;
  font-weight: bold;
  font-size: 15px;
  margin-left: 10px;
}

.mails {
  display: flex;
  align-items: center;
}
.mails > img {
  width: 35px;
  border-radius: 10px;
}
.mail-info {
  margin: 10px 65px;
  margin-left: 0px;
  line-height: 1.7;
  font-weight: 600;
}
.check1 {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100px;
}
.bottom-info {
  display: flex;
  justify-content: space-between;
}
.date {
  color: grey;
}
.person {
  width: 25px;
  height: 25px;
  border-radius: 10px;
  text-align: center;
  color: white;
  padding: 5px 3px 0px;
}
.border1 {
  background-color: #5f4bfd;
}
.border2 {
  background-color: #e32553;
}
.border3 {
  background-color: #01c828;
}
.message {
  margin: 20px 10px;
  flex: 1;
  background-color: white;
  padding: 25px;
  overflow: auto;
}
.mes-date {
  color: grey;
  font-size: 14px;
}
.who {
  font-weight: 600;
}
.title {
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
  margin-top: 10px;
}

.message-from {
  margin-top: 20px;
  color: grey;
  font-size: 17px;
}
.attachment-last {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 350px;
}
.att-write {
  color: grey;
}
.buton0 {
  background-color: #ecefff;
  color: #7175c0;
}
.buton9 {
  background-color: #e0f8e3;
  color: #79b992;
}

.btn1 {
  border-radius: 3px;
  border: 1px;
  height: 25px;
  font-weight: bold;
}
.inside-img > img {
  width: 100px;
  border-radius: 10px;
  margin-top: 20px;
}
.inside-img > img:hover {
  transform: scale(0.95);
}
.son-buton {
  width: 100px;
  height: 68px;
  border-radius: 10px;
  border: 1px;
  margin-top: 17px;
  background-color: #f5e9f9;
  color: #b79ed8;
  font-weight: 500;
  font-size: 20px;
}
.son-images {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 520px;
}
.btn2 {
  margin-top: 40px;
  border-radius: 3px;
  border: 1px;
  height: 35px;
  padding: 5px 30px;
  color: white;
  position: relative;
}
.butona {
  background-color: #8e44ad;
}
.butonb {
  background-color: #fe4a85;
}
.butona:hover {
  background-color: #892bb4;
}
.butonb:hover {
  background-color: #ec195f;
}
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1;
}

/* Handle */
::-webkit-scrollbar-thumb {
  background: #888;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555;
}

    </style>


    <div class="dashboard">
  
  <div class="right-side">
    <div class="right-header">
      <div class="top-bar">
        <div class="top-bar-justify">
          <div class="big-inbox">
            Inbox
          </div>

          <div class="top-bar-items">
            <div class="notif">
              <div class="online pink">
              </div>
              <img src="https://i.ibb.co/VJm73Hz/notifications-button.png" />
            </div>
            <img src="https://i.ibb.co/vz4HYJb/envelope.png" />
            <img src="https://i.ibb.co/52Vkq4M/earth-globe.png" />
            <div class="icon-name5"> English </div>
          </div>
        </div>
        <div class="profile2">
          <img src="https://www.seekclipart.com/clipng/middle/103-1032140_graphic-transparent-1-vector-flat-small-user-icon.png" />
          <div class="icon-name5">Larry Nunez</div>
        </div>
      </div>
      <hr class="new-hr">
      <div class="right-bottom">
        <div class="check">
          <label class="checkbox">
            <input type="checkbox" />
          </label>
          <div class="down-arrow">
            <img src="https://i.ibb.co/WDqrXj6/drop-down-arrow.png" />
          </div>
        </div>
        <div class="middle-buttons">
          <div class="buttons">
            <button class="new button">
              <img src="https://i.ibb.co/X4j3TZR/reload.png" />
            </button>
            <button class="new button">
              <img src="https://i.ibb.co/L60Yr87/eye.png" />
            </button>
            <button class="new button">
              <img src="https://i.ibb.co/Lv6TqBG/waste-bin.png" />
            </button>
          </div>
          <div class="form has-search">
            <input class="text" type="search" placeholder="Search here..." name="search" />
            <span class="searchIcon">
              <img src="https://i.ibb.co/sqFgRq8/search.png" />
            </span>
          </div>
        </div>
        <div class="search-arrow">
          <img src="https://i.ibb.co/cx2t05H/scroll-arrows.png" />
        </div>
      </div>
    </div>
    <div class="right-body">
      <div class="scroll-cards">
        <div class="card">
          <div class="mails">
            <img src="https://randomuser.me/api/portraits/men/20.jpg" />
            <div class="mail-names">
              Louis Adkins
            </div>

          </div>
          <div class="mail-info">
            How To Write Better Advertising Copy Heading
          </div>
          <div>
          </div>
          <div class="bottom-info">
            <div class="check1">
              <label class="checkbox">
                <input type="checkbox" />
              </label>
              <div class="star">
                <img src="https://i.ibb.co/SN5SJ8x/star.png" />
              </div>
              <div class="star">
                <img src="https://i.ibb.co/FW9tsHK/attachment.png" />
              </div>

            </div>
            <div class="date">8:30 AM</div>
          </div>
        </div>
        <div class="card">
          <div class="mails">
            <span class="person border1"> C</span>
            <div class="mail-names">
              Clarence Hogan
            </div>

          </div>
          <div class="mail-info">
            How To Write Better Advertising

          </div>
          <div>
          </div>
          <div class="bottom-info">
            <div class="check1">
              <label class="checkbox">
                <input type="checkbox" />
              </label>
              <div class="star">
                <img src="https://i.ibb.co/SN5SJ8x/star.png" />
              </div>
              <div class="star">
                <img src="https://i.ibb.co/FW9tsHK/attachment.png" />
              </div>

            </div>
            <div class="date">8:30 AM</div>
          </div>
        </div>
        <div class="card">
          <div class="mails">
            <span class="person border2">O</span>
            <div class="mail-names">
              Olga Boone
            </div>

          </div>
          <div class="mail-info">
            Old Fashioned Recipe
          </div>
          <div>
          </div>
          <div class="bottom-info">
            <div class="check1">
              <label class="checkbox">
                <input type="checkbox" />
              </label>
              <div class="star">
                <img src="https://i.ibb.co/SN5SJ8x/star.png" />
              </div>
              <div class="star">
                <img src="https://i.ibb.co/FW9tsHK/attachment.png" />
              </div>

            </div>
            <div class="date">8:30 AM</div>
          </div>
        </div>
        <div class="card">
          <div class="mails">
            <span class="person border3">H</span>
            <div class="mail-names">
              Harry Burton
            </div>

          </div>
          <div class="mail-info">
            How To Write Better Advertising Copy Heading
          </div>
          <div>
          </div>
          <div class="bottom-info">
            <div class="check1">
              <label class="checkbox">
                <input type="checkbox" />
              </label>
              <div class="star">
                <img src="https://i.ibb.co/SN5SJ8x/star.png" />
              </div>
              <div class="star">
                <img src="https://i.ibb.co/FW9tsHK/attachment.png" />
              </div>

            </div>
            <div class="date">8:30 AM</div>
          </div>

        </div>

      </div>
      <div class="message">
        <div class="mes-date">
          Dec 1, 2018
        </div>
        <div class="title">
          Old Fashioned Recipe For Preventing Allergies And Chemical
          <div class="title-icons">

          </div>
        </div>
        <div class="from">
          <span class="who">From: </span>ashraf@glaze.com
        </div>
        <div class="message-from">
          Hello Malikan!
          <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, voluptas pariatur repellat veritatis atque, tempora quasi quas facere impedit aliquam libero qui iure cumque incidunt facilis soluta necessitatibus laboriosam nemo. Delectus architecto
            sed, excepturi natus iste vel quidem officia corrupti repudiandae!</p>
          <p> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore, deleniti eaque eligendi minus maxime tempora eiusi.</p>
          <p>Have a nice day</p>
          <p>Ashraf</p>
        </div>
        <div class="attachment-last">
          <img src="https://i.ibb.co/FW9tsHK/attachment.png" />
          <div class="att-write">
            Attachment (80MB)
          </div>
          <button class="btn1 buton0"> View All
            <span class="tag">
          </button>

          <button class="btn1 buton9"> Download All
          </button>

        </div>
        <div class="son-images">
          <div class="inside-img">
            <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60" />
            <img src="https://images.unsplash.com/photo-1500917293891-ef795e70e1f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60" />
            <img src="https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60" />
            <img src="https://images.unsplash.com/photo-1450609283058-0ec52fa7eac4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60" />

          </div>
          <button class="son-buton"> 20+
          </button>
        </div>
        <button class="btn2 butona"> Reply
          <span class="tag">
            <img src="https://i.ibb.co/GQf8frw/reply.png" />
          </span>
        </button>

        <button class="btn2 butonb"> Forward
          <span class="tag">
            <img src="https://i.ibb.co/6W40kTg/forward-arrow.png" />
          </span>
        </button>
      </div>
    </div>
  </div>
    </div>
</asp:Content>
