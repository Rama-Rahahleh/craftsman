<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Workshop_view.aspx.cs" Inherits="craftsman.Workshop_view" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        /*view css*/


        /* modal content styles */
        .modal-content-wrapper {
            max-width: 1400px;
            width: 90%;
            display: flex;
            margin: auto;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 70px 0;
        }

            .modal-content-wrapper .image-modal-content {
                flex: 0 0 30%;
                cursor: pointer;
                transition: 300ms ease-out;
                margin-right: 20px;
                margin-bottom: 40px;
            }

        @media (max-width: 992px) {
            .modal-content-wrapper .image-modal-content {
                flex: 0 0 45%;
            }
        }

        @media (max-width: 550px) {
            .modal-content-wrapper .image-modal-content {
                flex: 0 0 100%;
            }
        }

        .modal-content-wrapper .image-modal-content:hover {
            transform: scale(1.03);
            transition: 300ms ease-in;
        }

        .modal-content-wrapper .image-modal-content img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            border-radius: 10px;
            border: 1px solid #222;
        }

        /* modal popup styles */
        .image-modal-popup {
            position: fixed;
            overflow: auto;
            top: 0;
            bottom: 0;
            right: 0;
            left: 0;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            animation: 500ms fadeIn;
            display: none;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .image-modal-popup .wrapper {
            display: flex;
            flex-direction: column;
            align-items: center;
            max-width: 1200px;
            margin: auto;
            margin-top: 30px;
            position: relative;
            top: 15%;
        }

        .image-modal-popup .description {
            text-align: center;
        }

        .image-modal-popup img {
            width: 60%;
            max-height: calc(100vh - 150px);
            margin-bottom: 10px;
            cursor: pointer;
        }

        .image-modal-popup span {
            position: absolute;
            top: 0;
            right: 10px;
            font-size: 4rem;
            color: red;
            cursor: pointer;
        }

        .image-modal-popup p {
            margin: 5px auto;
            font-size: 1.1rem;
        }

        :root {
            /*     Main 
    --primary: 300, 92%, 48%;
    --secondary: 93, 15%, 76%;
    --tertiary: 201, 96%, 71%;*/
            --background: 240, 4%, 3%;
            /*--text-primary: 0, 0%, 100%;*/
            /*Colors*/
            --black: 0, 0%, 0%;
            --white: 0, 0%, 100%;
            /*--grooble: 233, 3%, 48%;
    --red: 347, 84%, 68%;
    --orange: 23, 84%, 68%;
    --yellow: 52, 84%, 68%;
    --green: 114, 84%, 68%;
    --teal: 163, 84%, 68%;
    --blue: 219, 84%, 68%;
    --purple: 279, 84%, 68%;
    --pink: 312, 84%, 68%;*/
            --gradient: linear-gradient(90deg, hsla(var(--primary), 1) 0%, hsla(var(--secondary), 1) 50%, hsla(var(--tertiary), 1) 100%);
            --heading-large: 5.6rem;
            --heading-medium: 3.6rem;
            --heading-small: 2.4rem;
            --paragraph: 1.2rem;
            --transition-main: .175, .685, .32;
            --font-main: "Poppins";
        }


        button {
            padding: .8em 1.2em;
            color: #AB7442;
            background-color: hsl(var(--background));
            border: 1px solid hsl(var(--white));
            font-size: var(--paragraph);
            cursor: pointer;
            outline: none;
        }

            button:focus {
                box-shadow: 0 0 0 2px hsl(var(--black));
                border: 1px solid transparent;
            }

        .btn-primary-gray {
            color: hsl(var(--white)) !important;
            background-color: hsl(var(--secondary)) !important;
            border-style: none;
            border-radius: 1.3rem;
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
                box-shadow: 0 0 0 2px hsl(var(--white));
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

        Columns
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
        /*.flexbox-space-bet {
    display: flex;
    justify-content: space-between;
    align-items: center;
}*/

        /* ===============
    3.2 Classes
   =============== */
        /**/
        .view-width {
            width: 85%;
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
        /*
#main {
    min-height: 110vh;
}
*/
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
            color: hsl(var(--white));
        }

        .phi-profile-tagline {
            color: hsl(var(--white));
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
            margin: 8px;
            height: 30vh;
            flex-grow: 1;
            position: relative;
            cursor: pointer;
        }

        .profile-page-item-image {
            min-height: 100%;
            max-width: 100%;
            object-fit: cover;
            vertical-align: bottom;
        }

        /* ==============
    3.2.4 Footer
   ============== */

        /* ================
    4. ::Selectors
   ================ */

        Selection
        ::selection {
            color: hsl(var(--white));
            background: hsla(var(--primary), .33);
        }

        Scrollbar
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
    </style>
    <!-- Main -->

    <main id="main" class="flexbox-col-start-center">
        <section class="profile-header">
            <div class="profile-header-inner flexbox">
                <div class="phi-info-wrapper flexbox">
                    <div class="phi-info-left flexbox">
                        <!-- Profile Picture -->
                        <div class="phi-profile-picture-wrapper">
                            <div class="phi-profile-picture-inner flexbox">
                                <%--                <img class="phi-profile-picture" src="Covers\Profile.jpg" alt="">--%>
                                <asp:Image ID="Image_profile" runat="server" AlternateText="Profile Image" CssClass="phi-profile-picture shadow" />

                            </div>
                            <%--              <img class="phi-profile-picture-blur" src="https://images.unsplash.com/photo-1586156719269-d2f9faf80446?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80" alt="">--%>
                        </div>
                        <!-- Profile Username -->
                        <div class="phi-profile-username-wrapper flexbox-col-left">
                            <h3 class="phi-profile-username flexbox"><span class="material-icons-round text-white">Username verified</span></h3>
                            <p class="phi-profile-tagline text-white">Something neat and funny!</p>
                        </div>
                    </div>
                    <div class="phi-info-right flexbox-right">
                        <div>
                            <button type="button" class="btn-primary-gray button flexbox">
                                <ion-icon name="heart-outline"></ion-icon>
                                Add Posts<div class="btn-primary"></div>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- Profile Header Image -->
                <div class="profile-header-overlay"></div>
                <%--        <img class="profile-header-image" src="https://images.unsplash.com/photo-1616808943301-d80596eff29f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2010&q=80" alt="">--%>
                <asp:Image ID="Image_cover" runat="server" AlternateText="Cover Image" CssClass="profile-header-image" />

            </div>
        </section>

        <!-- Profile Page -->
        <div class="view-width">

            <div class="container-fluid p-0 pb-5">
                <!-- Profile Page -->

                <section class="profile-page">
                    <h3>Profile Posts</h3>
                    <div class="profile-page-inner">
                        <div class="modal-content-wrapper">
                            <asp:HyperLink runat="server" ID="hyperlink">
                                <asp:Repeater ID="repeaterPosts" runat="server">
                                    <ItemTemplate>
                                        <%--<div class="img-w ">
                                        <%--<img src="https://images.unsplash.com/photo-1485766410122-1b403edb53db?dpr=1&auto=format&fit=crop&w=1500&h=846&q=80&cs=tinysrgb&crop=" alt="" />
                                        <div class="profile-page-item flexbox overflow-hidden shadow-lg">
                                            <img class="profile-page-item-image " src="<%# Eval("FILE_PATH") %>" alt="">
                                        </div>
                                    </div>--%>
                                        <div class="image-modal-content ">
                                            <img src="<%# Eval("FILE_PATH") %>"
                                                data-description="<%# Eval("DESCREPTION") %>" alt="Vanilla JS Modal">
                                        </div>


                                    </ItemTemplate>
                                </asp:Repeater>
                            </asp:HyperLink>
                        </div>
                    </div>

                </section>
            </div>

        </div>
        <div class="image-modal-popup">
            <div class="wrapper">
                <%--                <span>&times;</span>--%>
                <img src="" alt="Image Modal">
                <div class="description">
                    <h1>This is placeholder content</h1>
                    <p>This content will be overwritten when the modal opens</p>
                </div>
            </div>
        </div>

    </main>
    <script>
        // all images inside the image modal content class
        const lightboxImages = document.querySelectorAll('.image-modal-content img');

        // dynamically selects all elements inside modal popup
        const modalElement = element =>
            document.querySelector(`.image-modal-popup ${element}`);

        const body = document.querySelector('body');

        // closes modal on clicking anywhere and adds overflow back
        document.addEventListener('click', () => {
            body.style.overflow = 'auto';
            modalPopup.style.display = 'none';
        });

        const modalPopup = document.querySelector('.image-modal-popup');

        // loops over each modal content img and adds click event functionality
        lightboxImages.forEach(img => {
            const data = img.dataset;
            img.addEventListener('click', e => {
                body.style.overflow = 'hidden';
                e.stopPropagation();
                modalPopup.style.display = 'block';
                modalElement('h1').innerHTML = data.title;
                modalElement('p').innerHTML = data.description;
                modalElement('img').src = img.src;
            });
        });

    </script>



</asp:Content>
