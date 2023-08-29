<%@ Page Title="Accounts Categories" Language="C#" MasterPageFile="~/Admin/AdminNested.master" AutoEventWireup="true" CodeBehind="Accounts Categories.aspx.cs" Inherits="craftsman.Admin.Accounts_Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <link href="../Asset/css/AccountsCategory.css" rel="stylesheet" />



   <asp:Panel ID="AccordionPanel" runat="server">
    <div class="wrapper">
        <div class="header">
            <h1 class="header__title">Category Grid</h1>
        </div>
        <asp:Repeater ID="AccordionRepeater" runat="server" OnItemDataBound="AccordionRepeater_ItemDataBound">
            <ItemTemplate>
                <div class="row">
                    <asp:PlaceHolder ID="placeholder" runat="server">
                        <!-- Content for the placeholders will be added dynamically -->
                    </asp:PlaceHolder>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Panel>


    <%--<div id="Popup" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <p id="msg" runat="server">
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
                        <asp:BoundColumn DataField="EMAIL" HeaderText="User Email"/>
                        	</Columns>		
						
					</asp:DataGrid>
        </p>
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
  </script>--%>
 -
<%--    <script>
        var $cell = $('.card');

        //open and close card when clicked on card
        $cell.find('.js-expander').click(function () {

            var $thisCell = $(this).closest('.card');

            if ($thisCell.hasClass('is-collapsed')) {
                $cell.not($thisCell).removeClass('is-expanded').addClass('is-collapsed').addClass('is-inactive');
                $thisCell.removeClass('is-collapsed').addClass('is-expanded');

                if ($cell.not($thisCell).hasClass('is-inactive')) {
                    //do nothing
                } else {
                    $cell.not($thisCell).addClass('is-inactive');
                }

            } else {
                $thisCell.removeClass('is-expanded').addClass('is-collapsed');
                $cell.not($thisCell).removeClass('is-inactive');
            }
        });

        //close card when click on cross
        $cell.find('.js-collapser').click(function () {

            var $thisCell = $(this).closest('.card');

            $thisCell.removeClass('is-expanded').addClass('is-collapsed');
            $cell.not($thisCell).removeClass('is-inactive');

        });




    </scr--%>

</asp:Content>
