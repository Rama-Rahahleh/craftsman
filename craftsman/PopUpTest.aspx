<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PopUpTest.aspx.cs" Inherits="craftsman.PopUpTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /*** Model popup***/
        .btn.btn-secondary.close {
            border-radius: 1.3rem;
            position: relative;
            left: 48%;
        }

        .modal-content {
            border-radius: 1rem;
            box-shadow: 0 0 8px 0px #000000a6;
            padding: 3%;
        }

        .modal {
            position: fixed;
            top: 25%;
            left: 0;
        }

        .modal-backdrop {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent gray color */
        }
    </style>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:PostBackTrigger ControlID="Submit" />
        </Triggers>
        <ContentTemplate>
            <asp:Button runat="server" ID="test" CssClass="btn-lg" Text="TEST ME!" OnClick="_Click" UseSubmitBehavior="false" />

            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">


                            <h2 class="text-secondary shadow-sm mb-4">Send Report</h2>
                            <asp:Label ID="error_msg" runat="server" Visible="false" />
                            <div class="container d-flex align-items-center flex-column">

                                <%-- drop down menu --%>
                                <div class="input-group gx-0 row m-3">
                                    <asp:DropDownList ID="type" runat="server" CssClass="form-select">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ErrorMessage="Please Select a Category"
                                        ControlToValidate="type" InitialValue="0"
                                        Display="Dynamic" ForeColor="red"
                                        ValidationGroup="create"></asp:RequiredFieldValidator>
                                </div>
                                <asp:TextBox runat="server" ID="description" CssClass="form-control m-3 width overflow-hidden" placeholder="descripe your problem" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                      ErrorMessage="Please descripe your problem"
                                    ValidationGroup="create" ForeColor="red"
                                    ControlToValidate="description"></asp:RequiredFieldValidator>

                            </div>
                            </div>
                            <div class="mt-4">
                                <asp:Button ID="Submit" runat="server" Text="Submit"
                                    CssClass="btn btn-danger rounded-pill me-2" ValidationGroup="create" CausesValidation="true"
                                    OnClick="Add_Report" />
                                <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





        </ContentTemplate>
    </asp:UpdatePanel>
    <script>
        function OpenPopUp() {
            $('#myModal').modal('show');
        }
    </script>
    <script>
        function showContent(status, messgae) {
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "progressBar": true,
                "preventDuplicates": false,
                "positionClass": "toast-bottom-right",
                "showDuration": "600",
                "hideDuration": "1000",
                "timeOut": "1000",
                "extendedTimeOut": "60000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
            }

            if (status == 'success') {
                toastr["success"](messgae);
            }
            else if (status == 'info') {

                toastr["info"](messgae);
            }
            else if (status == 'error') {

                toastr["error"](messgae);
            }
            else if (status == 'warning') {

                toastr["warning"](messgae);
            }
        }
    </script>
</asp:Content>
<%--Create workstation--%>
<%--    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
    <Triggers>
        <asp:PostBackTrigger ControlID="Submit" />
    </Triggers>
   <ContentTemplate>
            <asp:Button runat="server" ID="Button1" CssClass="btn-lg" Text="TEST ME!" OnClick="_Click" UseSubmitBehavior="false" />
               
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                          <div class="modal-body">

           
                            <h2 class="text-primary shadow-sm mb-4">Create Your Workshop</h2>
                            <asp:Label ID="Label1" runat="server" Visible="false" />
                            <div class="container d-flex align-items-center flex-column">
                                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control m-3 width overflow-hidden" placeholder="Enter Workshop name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                      ErrorMessage="Please enter an Address"
                                    ValidationGroup="create" ForeColor="red"
                                    ControlToValidate="Workshop_name"></asp:RequiredFieldValidator>

                                <div class="row g-0">
                                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control col me-1" placeholder="Enter Workshop Phone number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                        ErrorMessage="Please enter a Phone number"
                                        ControlToValidate="Workshop_phone"
                                        Display="Dynamic" ForeColor="red"
                                        ValidationGroup="create"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control col ms-1" placeholder="Enter Workshop Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                        ErrorMessage="Please enter an Address"
                                        ControlToValidate="Workshop_address"
                                        Display="Dynamic" ForeColor="red"
                                        ValidationGroup="create"></asp:RequiredFieldValidator>
                                </div>
                                <%-- drop down menu 
                                <div class="input-group gx-0 row m-3">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                        ErrorMessage="Please Select a Category"
                                        ControlToValidate="Category" InitialValue="0"
                                        Display="Dynamic" ForeColor="red"
                                        ValidationGroup="create"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-group mb-3">
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" ViewStateMode="Enabled"/>
                                    <label class="input-group-text" >Upload Profile</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                      ErrorMessage="Please enter an Address"
                                    ValidationGroup="create" ForeColor="red"
                                    ControlToValidate="Profile_file"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-group mb-3">
                                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                                    <label class="input-group-text" >Upload Cover</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                      ErrorMessage="Please enter an Address"
                                    ValidationGroup="create" ForeColor="red"
                                    ControlToValidate="Cover_file"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="mt-4">
                            <asp:Button ID="Button2"  runat="server" Text="Create Workshop"  
                                CssClass="btn btn-primary rounded-pill me-2" ValidationGroup="create" CausesValidation="true"
                                OnClick="Create_Workshop"
                                />
                            <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
                            </div>
                    </div> 
                    </div>
                    </div>
                </div>
                
            
           
   
    
       </ContentTemplate>
        </asp:UpdatePanel>--%>

