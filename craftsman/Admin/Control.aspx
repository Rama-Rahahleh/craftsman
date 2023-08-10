<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminNested.master" AutoEventWireup="true" CodeBehind="Control.aspx.cs" Inherits="craftsman.Admin.Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

	<style>
		@import "https://s3-us-west-2.amazonaws.com/s.cdpn.io/584938/dashboard.scss";
body {
  background-color: #1b2431;
  color: #202020;
  font-family: "Montserrat", "Helvetica", "Open Sans", "Arial";
  font-size: 13px;
}

a:hover {
  text-decoration: none;
}

p,
figure {
  margin: 0;
  padding: 0;
}


.card-list {
  width: 100%;
}
.card-list:before, .card-list:after {
  content: " ";
  display: table;
}
.card-list:after {
  clear: both;
}

.card {
  border-radius: 8px;
  color: white;
  padding: 10px;
  position: relative;
}
.card .zmdi {
  color: white;
  font-size: 28px;
  opacity: 0.3;
  position: absolute;
  right: 13px;
  top: 13px;
}
.card .stat {
  border-top: 1px solid rgba(255, 255, 255, 0.3);
  font-size: 8px;
  margin-top: 25px;
  padding: 10px 10px 0;
  text-transform: uppercase;
}
.card .title {
  display: inline-block;
  font-size: 8px;
  padding: 10px 10px 0;
  text-transform: uppercase;
}
.card .value {
  font-size: 28px;
  padding: 0 10px;
}
.card.blue {
  background-color: #2298F1;
}
.card.green {
  background-color: #66B92E;
}
.card.orange {
  background-color: #DA932C;
}
.card.red {
  background-color: #D65B4A;
}

.projects {
  background-color: #273142;
  border: 1px solid #313D4F;
  overflow-x: auto;
  width: 100%;
}
.projects-inner {
  border-radius: 4px;
}

.projects-header {
  color: white;
  padding: 22px;
}
.projects-header .count,
.projects-header .title {
  display: inline-block;
}
.projects-header .count {
  color: #738297;
}
.projects-header .zmdi {
  cursor: pointer;
  float: right;
  font-size: 16px;
  margin: 5px 0;
}
.projects-header .title {
  font-size: 21px;
}
.projects-header .title + .count {
  margin-left: 5px;
}

.projects-table {
  background: #273142;
  width: 100%;
}
.projects-table td,
.projects-table th {
  color: white;
  padding: 10px 22px;
  vertical-align: middle;
}
.projects-table td p {
  font-size: 12px;
}
.projects-table td p:last-of-type {
  color: #738297;
  font-size: 11px;
}
.projects-table th {
  background-color: #313D4F;
}
.projects-table tr:hover {
  background-color: #303d52;
}
.projects-table tr:not(:last-of-type) {
  border-bottom: 1px solid #313D4F;
}
.projects-table .member figure,
.projects-table .member .member-info {
  display: inline-block;
  vertical-align: top;
}
.projects-table .member figure + .member-info {
  margin-left: 7px;
}
.projects-table .member img {
  border-radius: 50%;
  height: 32px;
  width: 32px;
}
.projects-table .status > form {
  float: right;
}
.projects-table .status-text {
  display: inline-block;
  font-size: 12px;
  margin: 11px 0;
  padding-left: 20px;
  position: relative;
}
.projects-table .status-text:before {
  border: 3px solid;
  border-radius: 50%;
  content: "";
  height: 14px;
  left: 0;
  position: absolute;
  top: 1px;
  width: 14px;
}
.projects-table .status-text.status-blue:before {
  border-color: #1C93ED;
}
.projects-table .status-text.status-green:before {
  border-color: #66B92E;
}
.projects-table .status-text.status-orange:before {
  border-color: #DA932C;
}
.projects-table .status-text.status-red:before {
  border-color: #D65B4A;
}

.selectric {
  background-color: transparent;
  border-color: #313D4F;
  border-radius: 4px;
}
.selectric .label {
  color: #738297;
  line-height: 34px;
  margin-right: 10px;
  text-align: left;
}
.selectric-wrapper {
  float: right;
  width: 150px;
}

.chart {
  border-radius: 3px;
  border: 1px solid #313D4F;
  color: white;
  padding: 10px;
  position: relative;
  text-align: center;
}
.chart canvas {
  height: 400px;
  margin: 20px 0;
  width: 100%;
}
.chart .actions {
  margin: 15px;
  position: absolute;
  right: 0;
  top: 0;
}
.chart .actions span {
  cursor: pointer;
  display: inline-block;
  font-size: 20px;
  margin: 5px;
  padding: 4px;
}
.chart .actions .btn-link {
  color: white;
}
.chart .actions .btn-link i {
  font-size: 1.75rem;
}
.chart .title {
  font-size: 18px;
  margin: 0;
  padding: 15px 0 5px;
}
.chart .title + .tagline {
  margin-top: 10px;
}
.chart .tagline {
  font-size: 12px;
}

.danger-item {
  border-left: 4px solid #A84D43;
}

.zmdi {
  line-height: 1;
  vertical-align: middle;
}

.container-fluid {
	display: flex;
}

.main {
	margin-left: 250px;
    padding: 20px;
    width: 100%;
        }

	</style>   
    	
		 	

	<div class="row">
		
		<div class="col-md-12 ml-sm-auto col-lg-12 my-3">
			<div class="card-list">
				<div class="row">
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card blue">
							<div class="title">all projects</div>
							<i class="zmdi zmdi-upload"></i>
							<div class="value">89</div>
							<div class="stat"><b>13</b>% increase</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card green">
							<div class="title">team members</div>
							<i class="zmdi zmdi-upload"></i>
							<div class="value">5,990</div>
							<div class="stat"><b>4</b>% increase</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card orange">
							<div class="title">total budget</div>
							<i class="zmdi zmdi-download"></i>
							<div class="value">$80,990</div>
							<div class="stat"><b>13</b>% decrease</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-4">
						<div class="card red">
							<div class="title">new customers</div>
							<i class="zmdi zmdi-download"></i>
							<div class="value">3</div>
							<div class="stat"><b>13</b>% decrease</div>
						</div>
					</div>
				</div>
			</div>
			<div class="projects mb-4">
				<div class="projects-inner">
					<header class="projects-header">
						<div class="title">Ongoing Projects</div>
						<div class="count">| 32 Projects</div>
						<i class="zmdi zmdi-download"></i>
					</header>
					<table class="projects-table">
						<thead>
							<tr>
								<th>Project</th>
								<th>Deadline</th>
								<th>Leader + Team</th>
								<th>Budget</th>
								<th>Status</th>
								<th class="text-right">Actions</th>
							</tr>
						</thead>
						<tr>
							<td>
								<p>New Dashboard</p>
								<p>Google</p>
							</td>
							<td>
								<p>17th Oct, 15</p>
								<p class="text-danger">Overdue</p>
							</td>
							<td class="member">
								<figure><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/584938/people_8.png" /></figure>
								<div class="member-info">
									<p>Myrtle Erickson</p>
									<p>UK Design Team</p>
								</div>
							</td>
							<td>
								<p>$4,670</p>
								<p>Paid</p>
							</td>
							<td class="status">
								<span class="status-text status-orange">In progress</span>
							</td>
							<td>
								<form class="form" action="#" method="POST">
								<select class="action-box">
									<option>Actions</option>
									<option>Start project</option>
									<option>Send for QA</option>
									<option>Send invoice</option>
								</select>
								</form>
							</td>
						</tr>
						<tr class="danger-item">
							<td>
								<p>New Dashboard</p>
								<p>Google</p>
							</td>
							<td>
								<p>17th Oct, 15</p>
								<p class="text-danger">Overdue</p>
							</td>
							<td class="member">
								<figure><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/584938/people_8.png" /></figure>
								<div class="member-info">
									<p>Myrtle Erickson</p>
									<p>UK Design Team</p>
								</div>
							</td>
							<td>
								<p>$4,670</p>
								<p>Paid</p>
							</td>
							<td class="status">
								<span class="status-text status-red">Blocked</span>
							</td>
							<td>
								<form class="form" action="#" method="POST">
									<select class="action-box">
										<option>Actions</option>
										<option>Start project</option>
										<option>Send for QA</option>
										<option>Send invoice</option>
									</select>
								</form>
							</td>
						</tr>
						<tr>
							<td>
								<p>New Dashboard</p>
								<p>Google</p>
							</td>
							<td>
								<p>17th Oct, 15</p>
								<p class="text-danger">Overdue</p>
							</td>
							<td class="member">
								<figure><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/584938/people_8.png" /></figure>
								<div class="member-info">
									<p>Myrtle Erickson</p>
									<p>UK Design Team</p>
								</div>
							</td>
							<td>
								<p>$4,670</p>
								<p>Paid</p>
							</td>
							<td class="status">
								<span class="status-text status-orange">In progress</span>
							</td>
							<td>
								<form class="form" action="#" method="POST">
									<select class="action-box">
						  <option>Actions</option>
						  <option>Start project</option>
						  <option>Send for QA</option>
						  <option>Send invoice</option>
						</select>
								</form>
							</td>
						</tr>
						<tr>
							<td>
								<p>New Dashboard</p>
								<p>Google</p>
							</td>
							<td>
								<p>17th Oct, 15</p>
								<p class="text-danger">Overdue</p>
							</td>
							<td class="member">
								<figure><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/584938/people_8.png" /></figure>
								<div class="member-info">
									<p>Myrtle Erickson</p>
									<p>UK Design Team</p>
								</div>
							</td>
							<td>
								<p>$4,670</p>
								<p>Paid</p>
							</td>
							<td class="status">
								<span class="status-text status-blue">Early stages</span>
							</td>
							<td>
								<form class="form" action="#" method="POST">
									<select class="action-box">
						  <option>Actions</option>
						  <option>Start project</option>
						  <option>Send for QA</option>
						  <option>Send invoice</option>
						</select>
								</form>
							</td>
						</tr>
						<tr>
							<td>
								<p>New Dashboard</p>
								<p>Google</p>
							</td>
							<td>
								<p>17th Oct, 15</p>
								<p class="text-danger">Overdue</p>
							</td>
							<td class="member">
								<figure><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/584938/people_8.png" /></figure>
								<div class="member-info">
									<p>Myrtle Erickson</p>
									<p>UK Design Team</p>
								</div>
							</td>
							<td>
								<p>$4,670</p>
								<p>Paid</p>
							</td>
							<td class="status">
								<span class="status-text status-orange">In progress</span>
							</td>
							<td>
								<form class="form" action="#" method="POST">
									<select class="action-box">
						  <option>Actions</option>
						  <option>Start project</option>
						  <option>Send for QA</option>
						  <option>Send invoice</option>
						</select>
								</form>
							</td>
						</tr>
					</table>
				</div>
			</div>
			
		</div>
	</div>

		
</asp:Content>
