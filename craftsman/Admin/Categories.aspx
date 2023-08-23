<%@ Page Title="Categories" Language="C#" MasterPageFile="~/Admin/AdminNested.master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="craftsman.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<style>
    label{
      padding-bottom: 2%;
      font-family: "Open Sans",sans-serif;
        font-weight: bold;
    }
    .form-group textarea.form-control{
    height: auto;
}

    .form-group{
        margin-left: 7%;
        font-family: "Open Sans",sans-serif;
        font-weight: bold;
        margin-top: -1.1%;
        
    }

    .form-button{
        font-family: "Open Sans",sans-serif;
        font-weight: 400;
        border-radius: 0.3rem;
        position: relative;
        left: 86%;
        color: #fff;
        background-color: #2072c4;
        border-color: #2072c4;
        padding: 1% 3%;
        margin-left: -2%;
        margin-top: 4%;
    }
.accordion {
    margin-left: 10%;
    padding-right: 3%;
}
.category-group{
     margin-left: 7%;
        font-family: "Open Sans",sans-serif;
        font-weight: bold;
        margin-top: -1.1%;
}



</style>


    
    <!---------------------------- Accordion-------------------------------->

     <div id="accordioncontainer" class="category-group" runat="server">
           <label style="margin-left: 8%" >Categories</label>
            <br />
         <div class="accordion" id="CategoryAccordion" runat="server" ClientIDMode="Static" >
          
    </div>

    <asp:Button ID="OpenForm" CssClass="form-button" runat="server" Text="Create "  OnClick="OpenForm_Click"/>
     </div>   
    
    
    <!---------------------------- Add Category Form-------------------------------->

    <div id="AddCategory" class="form-group" runat="server" visible="false">
        <div class="form-group mb-2">
            <asp:TextBox ID="category" runat="server" CssClass="form-control" placeholder="Category Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="category"
                ForeColor="Red" Font-Size="Small" Font-Bold="true"
               ValidationGroup="AddToDB" ErrorMessage="please enter category name"></asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group" >
            <label>Description</label>
            <textarea id="description" class="form-control" rows="7" placeholder="Category Description" runat="server"></textarea>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="AddToDB" ControlToValidate="description"
                ForeColor="Red" Font-Size="Small" Font-Bold="true"  ErrorMessage="please enter category Descrpition"></asp:RequiredFieldValidator>           
        </div>
         <asp:Button ID="AddToDB" CssClass="form-button" runat="server" Text="ADD" OnClick="AddToDB_Click" ValidationGroup="AddToDB"  />
    </div>

</asp:Content>
