﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestProfile.aspx.cs" Inherits="craftsman.TestProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
:root {
    /* Main */
    --primary: 300, 92%, 48%;
    --secondary: 178, 100%, 40%;
    --tertiary: 201, 96%, 71%;
    --background: 240, 4%, 3%;
    --text-primary: 0, 0%, 100%;
    /* Colors */
    --black: 0, 0%, 0%;
    --white: 0, 0%, 100%;
    --grooble: 233, 3%, 48%;
    --red: 347, 84%, 68%;
    --orange: 23, 84%, 68%;
    --yellow: 52, 84%, 68%;
    --green: 114, 84%, 68%;
    --teal: 163, 84%, 68%;
    --blue: 219, 84%, 68%;
    --purple: 279, 84%, 68%;
    --pink: 312, 84%, 68%;
    /* Gradients */
    --gradient: linear-gradient(90deg, hsla(var(--primary), 1) 0%, hsla(var(--secondary), 1) 50%, hsla(var(--tertiary), 1) 100%);
    /* Sizes */
    --heading-large: 5.6rem;
    --heading-medium: 3.6rem;
    --heading-small: 2.4rem;
    --paragraph: 1.2rem;
    /* Transitions */
    --transition-main: .175, .685, .32;
    /* Fonts */
    --font-main: "Poppins";
}

/* ==================
    2. Global Styles
   ================== */

*, *::before, *::after {
    box-sizing: inherit;
}
html, body {
    margin: 0;
    width: 100%;
    color: hsl(var(--text-primary));
    font-family: var(--font-main);
    background-color: hsl(var(--background));
    -webkit-font-smoothing: antialiased;
    scroll-behavior: smooth;
    box-sizing: border-box;
}

/* ================
    2.1 Typography
   =============== */

/* Headings */
h1, h2, h3, h4, h5, h6 {
    margin: 0;
    color: hsl(var(--text-primary));
}
/* Font Size */
h1 {
    font-size: var(--heading-large);
}
h2 {
    font-size: var(--heading-medium);
}
h3 {
    font-size: var(--heading-small);
}
h4 {
    font-size: calc(var(--heading-small) - .2rem);
}
h5 {
    font-size: calc(var(--heading-small) - .4rem);
}
h6 {
    font-size: calc(var(--heading-small) - .6rem);
}
/* Font Weight */
h1, h2 {
    font-weight: 900;
}
h3, h4, h5, h6 {
    font-weight: 800;
}
/* Paragraphs */
p {
    margin: 0;
    color: hsl(var(--text-primary));
    font-size: var(--paragraph);
}
/* Links */
a {
    color: hsla(var(--primary), 1);
    font-size: var(--paragraph);
    text-decoration: underline;
}
a:visited {
    color: hsla(var(--primary), .5);
}

/* =============
    2.2 Buttons
   ============= */

button {
    padding: .8em 1.2em;
    color: hsl(var(--text-primary));
    background-color: hsl(var(--background));
    border: 1px solid hsl(var(--white));
    font-size: var(--paragraph);
    cursor: pointer;
    outline: none;
}
button:focus {
    box-shadow:
            0 0 0 2px hsl(var(--black));
    border: 1px solid transparent;
}
.btn-primary-gray {
    color: hsl(var(--white)) !important;
    background: hsl(var(--black)) !important;
}
.button, .btn-secondary {
    margin: 0;
    width: 100%;
    position: relative;
    padding: 1.2em 1.8em;
    letter-spacing: .025em;
    color: hsl(var(--background));
    font-size: var(--paragraph);
    background: var(--gradient);
    background-size: 500%;
    border-radius: 5em;
    border: none;
    transform: scaleX(1);
    transition: transform .3s cubic-bezier(var(--transition-main), 1.275), filter .3s cubic-bezier(var(--transition-main), 1.275), bottom .3s cubic-bezier(var(--transition-main), 1.275), background-position 7.5s cubic-bezier(var(--transition-main), .955);
}
.button {
    transition: transform .3s cubic-bezier(var(--transition-main), 1.275), bottom .3s cubic-bezier(var(--transition-main), 1.275), background-position 17.5s cubic-bezier(var(--transition-main), .955);
}
.button, .button .btn-secondary {
    bottom: 0;
    background-position: 0 50%;
}
.button .btn-secondary {
    left: 0;
    width: 100%;
    position: absolute;
    filter: blur(1rem);
    transform: scale3d(.85, .95, 1);
    transition: transform .3s cubic-bezier(var(--transition-main), 1.275), filter .3s cubic-bezier(var(--transition-main), 1.275), bottom .3s cubic-bezier(var(--transition-main), 1.275), background-position 7.5s cubic-bezier(var(--transition-main), .955), opacity 3s cubic-bezier(var(--transition-main), 1.275);
    opacity: .3;
    z-index: -1;
}
.button:focus {
    outline: none;
}
.button:hover {
    bottom: 2px;
    transform: scale3d(1.1, 1.1, 1);
    background-position: 100% 50%;
    outline: none;
}
.btn-secondary, .button:hover .btn-secondary {
    bottom: -5px;
    background-position: 100% 50%;
    filter: blur(1.6rem);
    opacity: .4;
}
.button ion-icon {
    margin: 0 .5em .075em 0;
}

/* ===========
    2.3 Lists
   =========== */

ul, ol {
    margin: 1em 0;
}

/* ===========
    2.4 Forms
   =========== */

form {
    margin: 0;
}
fieldset {
    margin: 0;
    padding: .5em 0;
    border: none;
}
input {
    padding: .8em 1.2em;
    color: hsl(var(--text-primary));
    font-size: var(--paragraph);
    border: 2px solid hsl(var(--white));
    outline: none;
}
textarea {
    padding: .8em 1.2em;
    color: hsl(var(--text-primary));
    font-size: var(--paragraph);
    font-family: var(--font-main);
    border: 2px solid hsl(var(--white));
    outline: none;
}
input, textarea {
    transition: all .2s ease-in-out;
}
input:hover, input:focus, textarea:hover, textarea:focus {
    box-shadow:
            0 0 0 2px hsl(var(--white));
    border: 2px solid transparent;
}
select {
    padding: .8em 1.2em;
    color: hsl(var(--text-primary));
    font-size: var(--paragraph);
    border: 1px solid hsl(var(--black));
    outline: none;
}

/* ============
    3. Classes
   ============ */

.material-icons-round {
    user-select: none;
    cursor: default;
}

/* ====================
    3.1 Global classes
   ==================== */

/* ===============
    3.1.1 Flexbox
   =============== */

.flexbox {
    display: flex;
    justify-content: center;
    align-items: center;
}
.flexbox-left {
    display: flex;
    justify-content: flex-start;
    align-items: center;
}
.flexbox-right {
    display: flex;
    justify-content: flex-end;
    align-items: center;
}
/* Columns */
.flexbox-col {
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
}
.flexbox-col-left {
    display: flex;
    justify-content: flex-start;
    flex-direction: column;
    align-items: flex-start;
}
.flexbox-col-left-ns {
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: flex-start;
}
.flexbox-col-right {
    display: flex;
    justify-content: flex-end;
    flex-direction: column;
    align-items: flex-end;
}
.flexbox-col-right-ns {
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: flex-end;
}
.flexbox-col-start-center {
    display: flex;
    justify-content: flex-start;
    flex-direction: column;
    align-items: center;
}
/* Spacings */
.flexbox-space-bet {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

/* ===============
    3.2 Classes
   =============== */

.view-width {
    width: 70%;
}

/* ==============
    3.2.1 Navbar
   ============== */

/* ==============
    3.2.2 Header
   ============== */

/* ============
    3.2.3 Main
   ============ */

#main {
    min-height: 110vh;
}

/* ======================
    3.2.3.1 Profile Page
   ====================== */

/* Profile Header */
.profile-header {
    width: 100%;
    position: relative;
}
.profile-header-inner {
    width: 100%;
    position: relative;
    overflow: hidden;
    z-index: 2;
}
.profile-header-overlay {
    width: 100%;
    height: 100%;
    position: absolute;
    background: linear-gradient(hsla(var(--background), .33) 0%, hsla(var(--background), .77) 50%, hsla(var(--background), 1) 100%);
    z-index: 3;
}
.profile-header-image {
    min-width: 100%;
    max-width: 110%;
    min-height: 100%;
    position: absolute;
    filter: hue-rotate(-5deg) saturate(1.25);
    object-fit: cover;
}
/* Profile Info */
.phi-info-wrapper {
    padding: 4em 4em 8em 4em;
    width: 100%;
    display: grid;
    grid-template-columns: auto 1fr;
    gap: 2em;
    z-index: 5;
}
.phi-info-left {
    width: 100%;
    display: grid;
    grid-template-columns: auto 1fr;
    gap: 2em;
    z-index: 5;
}
/* Profile Info */
.phi-info-wrapper {
    padding: 4em 4em 8em 4em;
    width: 100%;
    display: grid;
    grid-template-columns: auto 1fr;
    gap: 2em;
    z-index: 5;
}
/* Profile Picture */
.phi-profile-picture-wrapper {
    width: 10em;
    height: 10em;
    position: relative;
}
.phi-profile-picture-inner {
    width: 100%;
    height: 100%;
    position: relative;
    border-radius: 50%;
    overflow: hidden;
    z-index: 6;
}
.phi-profile-picture {
    min-width: 100%;
    max-width: 105%;
    min-height: 100%;
    position: absolute;
    object-fit: cover;
}
.phi-profile-picture-blur {
    top: 1em;
    width: 100%;
    height: 100%;
    position: absolute;
    border-radius: 50%;
    transform: scale(.8, .8);
    filter: blur(1rem) hue-rotate(-5deg) saturate(1.25);
}
/* Profile Username */
.phi-profile-username-wrapper {

}
.phi-profile-username span {
    margin: 0 0 0 .3em;
}
.phi-profile-tagline {
    color: hsl(var(--grooble));
}

/* Profile Page */
.profile-page {
    margin: 10em 0;
}
.profile-page > h3 {
    font-size: var(--paragraph);
    text-transform: uppercase;
}
.profile-page-inner {
    margin: 1.5em 0;
    display: flex;
    flex-wrap: wrap;
    grid-gap: 0;
}
.profile-page-item {
    margin: 0;
    height: 30vh;
    flex-grow: 1;
    position: relative;
    cursor: pointer;
}
.profile-page-item-image {
    max-height: 100%;
    min-width: 100%;
    object-fit: cover;
    vertical-align: bottom;
}

/* ==============
    3.2.4 Footer
   ============== */

/* ================
    4. ::Selectors
   ================ */

/* Selection */
::selection {
    color: hsl(var(--white));
    background: hsla(var(--primary), .33);
}
/* Scrollbar */
::-webkit-scrollbar-track {
    background-color: hsl(var(--background));
}
::-webkit-scrollbar {
    width: 8px;
    background-color: hsl(var(--background));
}
::-webkit-scrollbar-thumb {
    background-color: hsl(var(--primary));
}

/* ===============
    5. @keyframes
   =============== */

/* =================
    6. @media rules
   ================= */

/* =======================
    6.1 max-width: 1660px
   ======================= */

@media only screen and (max-width: 1660px) {
    :root {
        /* Sizes */
        --heading-large: 5.4rem;
        --heading-medium: 3.4rem;
        --heading-small: 2.2rem;
    }

    /* ===============
        3.2 Classes
       =============== */

    /* ==============
        3.2.1 Navbar
       ============== */

    /* ==============
        3.2.2 Header
       ============== */

    /* ============
        3.2.3 Main
       ============ */

    /* ======================
        3.2.3.1 Profile Page
       ====================== */

    /* ==============
        3.2.4 Footer
       ============== */

}

/* =======================
    6.2 max-width: 1456px
   ======================= */

@media only screen and (max-width: 1456px) {
    :root {
        /* Sizes */
        --heading-large: 5.2rem;
        --heading-medium: 3.2rem;
        --heading-small: 2rem;
    }

    /* ===============
        3.2 Classes
       =============== */

    .view-width {
        width: 80%;
    }

    /* ==============
        3.2.1 Navbar
       ============== */

    /* ==============
        3.2.2 Header
       ============== */

    /* ============
        3.2.3 Main
       ============ */

    /* ======================
        3.2.3.1 Profile Page
       ====================== */

    /* ==============
        3.2.4 Footer
       ============== */

}

/* =======================
    6.3 max-width: 1220px
   ======================= */

@media only screen and (max-width: 1220px) {

    /* ===============
        3.2 Classes
       =============== */

    .view-width {
        width: 70%;
    }

    /* ==============
        3.2.1 Navbar
       ============== */

    /* ==============
        3.2.2 Header
       ============== */

    /* ============
        3.2.3 Main
       ============ */

    /* ======================
        3.2.3.1 Profile Page
       ====================== */

    /* ==============
        3.2.4 Footer
       ============== */

}

/* =======================
    6.4 max-width: 1024px
   ======================= */

@media only screen and (max-width: 1024px) {
    :root {
        /* Sizes */
        --heading-large: 5rem;
        --heading-medium: 3rem;
        --heading-small: 1.8rem;
    }

    /* ===============
        3.2 Classes
       =============== */

    .view-width {
        width: 75%;
    }

    /* ==============
        3.2.1 Navbar
       ============== */

    /* ==============
        3.2.2 Header
       ============== */

    /* ============
        3.2.3 Main
       ============ */

    /* ======================
        3.2.3.1 Profile Page
       ====================== */
  
    /* Profile Info */
    .phi-info-wrapper {
        grid-template-columns: auto;
        place-items: center;
        gap: 2em;
    }
    .phi-info-right {
        justify-content: center;
        align-items: center;
    }

    /* ==============
        3.2.4 Footer
       ============== */

}

/* ======================
    6.5 max-width: 756px
   ====================== */

@media only screen and (max-width: 756px) {
    :root {
        /* Sizes */
        --heading-large: 4rem;
        --heading-medium: 2.6rem;
        --heading-small: 1.6rem;
        --paragraph: 1rem;
        --navbar-buttons: 2rem;
    }

    /* ===============
        3.2 Classes
       =============== */

    .view-width {
        width: calc(100% - 5em);
    }

    /* ==============
        3.2.1 Navbar
       ============== */

    /* ==============
        3.2.2 Header
       ============== */

    /* ============
        3.2.3 Main
       ============ */

    .phi-info-left {
        grid-template-columns: auto;
        place-items: center;
        gap: 2em;
    }
    /* Profile Username */
    .phi-profile-username-wrapper {
        justify-content: center;
        align-items: center;
    }

    /* ======================
        3.2.3.1 Profile Page
       ====================== */

    /* ==============
        3.2.4 Footer
       ============== */

}

/* ======================
    6.6 max-width: 576px
   ====================== */

@media only screen and (max-width: 576px) {

    /* ===============
        3.2 Classes
       =============== */

    .view-width {
        width: calc(100% - 3em);
    }

    /* ==============
        3.2.1 Navbar
       ============== */

    /* ==============
        3.2.2 Header
       ============== */

    /* ============
        3.2.3 Main
       ============ */

    /* ======================
        3.2.3.1 Profile Page
       ====================== */

    /* ==============
        3.2.4 Footer
       ============== */

}

/* ======================
    6.7 max-width: 496px
   ====================== */

@media only screen and (max-width: 496px) {

    /* ===============
        3.2 Classes
       =============== */

    /* ==============
        3.2.1 Navbar
       ============== */

    /* ==============
        3.2.2 Header
       ============== */

    /* ============
        3.2.3 Main
       ============ */

    /* ======================
        3.2.3.1 Profile Page
       ====================== */

    /* ==============
        3.2.4 Footer
       ============== */

}

    </style>
</head>
<body>
    <form id="form1" runat="server">
       
    </form>
    <!-- Main -->
<main id="main" class="flexbox-col-start-center">

  <!-- Profile Page -->
  <div class="view-width">

    <!-- Profile Header -->
    <section class="profile-header">
      <div class="profile-header-inner flexbox">
        <div class="phi-info-wrapper flexbox">
          <div class="phi-info-left flexbox">
            <!-- Profile Picture -->
            <div class="phi-profile-picture-wrapper">
              <div class="phi-profile-picture-inner flexbox">
                <img class="phi-profile-picture" src="https://images.unsplash.com/photo-1586156719269-d2f9faf80446?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80" alt="">
              </div>
              <img class="phi-profile-picture-blur" src="https://images.unsplash.com/photo-1586156719269-d2f9faf80446?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80" alt="">
            </div>
            <!-- Profile Username -->
            <div class="phi-profile-username-wrapper flexbox-col-left">
              <h3 class="phi-profile-username flexbox">Username<span class="material-icons-round">verified</span></h3>
              <p class="phi-profile-tagline">Something neat and funny!</p>
            </div>
          </div>
          <div class="phi-info-right flexbox-right">
            <div>
              <button type="button" class="btn-primary-gray button btn-primary flexbox">
                <ion-icon name="heart-outline"></ion-icon> Follow<div class="btn-secondary"></div>
              </button>
            </div>
          </div>
        </div>
        <!-- Profile Header Image -->
        <div class="profile-header-overlay"></div>
        <img class="profile-header-image" src="https://images.unsplash.com/photo-1616808943301-d80596eff29f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2010&q=80" alt="">
      </div>
    </section>

    <!-- Profile Page -->
    <section class="profile-page">
      <h3>Profile Posts</h3>
      <div class="profile-page-inner">
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1586896619133-913bd8dda086?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1587057159479-08f137d62022?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2002&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1543980912-da94eb7138e3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1593349480505-191eb0d3bdbd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1592054839314-d9f332cda0f5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1594801114217-6fc57805169a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1613486073627-30fa244557bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2134&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1612367197112-b10b7cae092d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2123&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1508606572321-901ea443707f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2132&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1506436718137-b21cd5c12e7a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2144&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1541257710737-06d667133a53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2132&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1529271247619-1f9736e6e8ee?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1938&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1572883475077-fb5aca766ace?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1582323139629-b1d4c0f89a75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2133&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1533619043865-1c2e2f32ff2f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1530651788726-1dbf58eeef1f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2082&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1600434481745-78f3ddb55154?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1528788720080-7da894708603?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2151&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1528788442742-a1a5450cd578?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2134&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1529644007373-e246cffb4def?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2112&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1528788256629-53078aa51d2f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2101&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1513200839033-40c57b7060f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1944&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1506691318991-c91e7df669b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2121&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1513594003807-3798b2d49908?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1504026136304-3d198b522973?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1542820060-a56821e07e6a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" alt="">
        </div>
        <div class="profile-page-item flexbox">
          <img class="profile-page-item-image" src="https://images.unsplash.com/photo-1549564919-e7bdd543f078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80" alt="">
        </div>
      </div>
    </section>

  </div>

</main>
</body>
</html>