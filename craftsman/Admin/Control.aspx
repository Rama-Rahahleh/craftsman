<%@ Page Title="Control" Language="C#" MasterPageFile="~/Admin/AdminNested.master" AutoEventWireup="true" CodeBehind="Control.aspx.cs" Inherits="craftsman.Admin.Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    	<link href="../Asset/css/ContolStyle.css" rel="stylesheet" />
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>

            <div class="row">
		
		<div class="col-md-12 ml-sm-auto col-lg-12 my-3">
			<div class="card-list">
				
				<div class="row">
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card blue">
							<div class="title">All Accounts</div>
							<i class="zmdi zmdi-upload"></i>
							<div class="value" runat="server" id="StatDiv0"  ClientIDMode="Static"></div>
							<div class="stat"><b>13</b>% increase</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card green">
							<div class="title">Customers</div>
							<i class="zmdi zmdi-upload"></i>
							<div class="value" runat="server" id="StatDiv1"  ClientIDMode="Static"></div>
							<div class="stat"><b>4</b>% increase</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card orange">
							<div class="title">HandyMen</div>
							<i class="zmdi zmdi-download"></i>
							<div class="value" runat="server" id="StatDiv2"  ClientIDMode="Static"></div>
							<div class="stat"><b>13</b>% decrease</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card red">
							<div class="title">Workshops</div>
							<i class="zmdi zmdi-download"></i>
							<div class="value" runat="server" id="StatDiv3"  ClientIDMode="Static"></div>
							<div class="stat"><b>13</b>% decrease</div>
						</div>
					</div>
				</div>
			</div>
			<div class="projects mb-4">
				<div class="projects-inner">
					<asp:DataGrid ID="AccountGrid" runat="server"  CssClass="projects-table w-100"
						AllowPaging="true" OnPageIndexChanged="AccountGrid_PageIndexChanged" 
						PageSize="10" PagerStyle-HorizontalAlign="Center" PagerStyle-ForeColor="#333399"
						PagerStyle-BackColor="#99ccff" 
						PagerStyle-Mode="NumericPages" PagerStyle-Position="Bottom"
						AutoGenerateColumns="false" 
						HeaderStyle-BackColor="#99ccff" HeaderStyle-BorderColor="#99ccff"
						HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White"  OnRowDataBound="AccountGrid_RowDataBound">
						<Columns>
							<asp:TemplateColumn HeaderText="#">
								<ItemTemplate>
									<%# Container.DataSetIndex+1 %>
								</ItemTemplate>
							</asp:TemplateColumn>

						<asp:BoundColumn DataField="USER_ID" />						
						
						<asp:BoundColumn DataField="USERNAME" HeaderText="User Name" />
						
						<asp:BoundColumn DataField="PHONE" HeaderText="Phone"/>
						<asp:BoundColumn DataField="EMAIL" HeaderText="User Email"/>
						<asp:TemplateColumn HeaderText="User Type" >
							<ItemTemplate>
								<asp:Label ID="UserType" runat="server" ></asp:Label>
							</ItemTemplate>
						</asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Is Reported">
                                <ItemTemplate>
                                    <label class="switch">
                                        <asp:CheckBox ID="Report" runat="server" AutoPostBack="true" OnCheckedChanged="Report_CheckedChanged"
                                            />
                                        <span class="slider round"></span>
                                    </label>
									
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Is Active">
                                <ItemTemplate>
									<label class="switch">
                                        <asp:CheckBox ID="Active" runat="server" AutoPostBack="true" OnCheckedChanged="Active_CheckedChanged"
                                             />
                                        <span class="slider round"></span>
                                    </label>
                                    
                                </ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="USER_TYPE" />

						<asp:BoundColumn DataField="IsReported" />

					    <asp:BoundColumn DataField="IsActive"  />
						</Columns>		
						
					</asp:DataGrid>
				</div>
			</div>


		</div>
	</div>
		</ContentTemplate>
		<Triggers>
			<asp:AsyncPostBackTrigger ControlID="AccountGrid" />
		</Triggers>
	
	</asp:UpdatePanel>


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
                "timeOut": "5000",
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
