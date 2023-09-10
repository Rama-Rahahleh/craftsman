<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="craftsman.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater runat="server" ID="ResultRepeater">
        <ItemTemplate>
            <main id="main" class="flexbox-col-start-center">
                <section class="profile-header">
                    <div class="profile-header-inner flexbox">
                        <div class="phi-info-wrapper flexbox">
                            <div class="phi-info-left flexbox">
                                <!-- Profile Picture -->
                                <div class="phi-profile-picture-wrapper">
                                    <div class="phi-profile-picture-inner flexbox">
                                        <asp:Image ID="Image_profile" runat="server" src="<%# Eval("Profile") %>" AlternateText="Profile Image" CssClass="phi-profile-picture shadow" />

                                    </div>
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
                                        Follow<div class="btn-primary"></div>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- Profile Header Image -->
                        <div class="profile-header-overlay"></div>
                        <asp:Image ID="Image_cover" runat="server" src="<%# Eval("Cover") %>" AlternateText="Cover Image" CssClass="profile-header-image" />

                    </div>
                </section>
            </main>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
