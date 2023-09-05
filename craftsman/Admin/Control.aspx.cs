using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace craftsman.Admin
{
    public partial class Control : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["craftman"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["type"] != "1")
            {
                Response.Redirect("~/default.aspx");
            }
            if (!Page.IsPostBack)
            {
                FillAccountGrid();
                PopulateStatistics();
            }
        }
        public void FillAccountGrid()
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("SELECT * FROM [Accounts]", con))
                {
                    con.Open();
                    command.CommandType = System.Data.CommandType.Text;
                    SqlDataAdapter adapter;
                    DataSet ds = new DataSet();
                    adapter = new SqlDataAdapter(command);
                    adapter.Fill(ds);
                    AccountGrid.DataSource = ds;
                    AccountGrid.DataBind();
                    AccountGrid.Columns[1].Visible = false;
                    AccountGrid.Columns[8].Visible = false;
                    AccountGrid.Columns[9].Visible = false;
                    AccountGrid.Columns[10].Visible = false;
                    for (int i = 0; i < AccountGrid.Items.Count; i++)
                    {
                        Label Type = AccountGrid.Items[i].Cells[5].FindControl("UserType") as Label;
                        if (AccountGrid.Items[i].Cells[8].Text == "1")
                        {
                            Type.Text = "Admin";

                        }
                        else if (AccountGrid.Items[i].Cells[8].Text == "2")
                        {
                            Type.Text = "HandyMan";
                        }
                        else if (AccountGrid.Items[i].Cells[8].Text == "3")
                        {
                            Type.Text = "Customer";

                        }

                        CheckBox Report = AccountGrid.Items[i].Cells[6].FindControl("Report") as CheckBox;
                        CheckBox Active = AccountGrid.Items[i].Cells[7].FindControl("Active") as CheckBox;
                        if (Report != null)
                        {
                            if (Convert.ToBoolean(AccountGrid.Items[i].Cells[9].Text) == true)
                            {
                                Report.Checked = true;
                            }
                            else if (Convert.ToBoolean(AccountGrid.Items[i].Cells[9].Text) == false)
                            {
                                Report.Checked = false;
                            }
                        }
                        if (Active != null)
                        {
                            if (Convert.ToBoolean(AccountGrid.Items[i].Cells[10].Text) == true)
                            {
                                Active.Checked = true;
                            }
                            else if (Convert.ToBoolean(AccountGrid.Items[i].Cells[10].Text) == false)
                            {
                                Active.Checked = false;
                            }
                        }

                    }
                    con.Close();

                }
            }
        }
        protected void AccountGrid_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {

        }

        //protected void AccountGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        CheckBox ReportCheckBox = (CheckBox)e.Row.FindControl("ReportCheckBox");

        //        if (ReportCheckBox != null)
        //        {
        //            DataRowView rowView = (DataRowView)e.Row.DataItem;
        //            ReportCheckBox.Checked = Convert.ToBoolean(rowView["IsReported"]);
        //        }
        //    }

        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        CheckBox ActiveCheckBox = (CheckBox)e.Row.FindControl("ActiveCheckBox");

        //        if (ActiveCheckBox != null)
        //        {
        //            DataRowView rowView = (DataRowView)e.Row.DataItem;
        //            ActiveCheckBox.Checked = Convert.ToBoolean(rowView["IsActive"]);
        //        }
        //    }
        //}

        protected void AccountGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                CheckBox ReportCheckBox = (CheckBox)e.Row.FindControl("Report");
                if (ReportCheckBox != null)
                {
                    DataRowView rowView = (DataRowView)e.Row.DataItem;
                    ReportCheckBox.Checked = Convert.ToBoolean(rowView["IsReported"]);
                }

                CheckBox ActiveCheckBox = (CheckBox)e.Row.FindControl("Active");
                if (ActiveCheckBox != null)
                {
                    DataRowView rowView = (DataRowView)e.Row.DataItem;
                    ActiveCheckBox.Checked = Convert.ToBoolean(rowView["IsActive"]);
                }
            }
        }

        protected void Report_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox Report = sender as CheckBox;
            DataGridItem item = (DataGridItem)Report.NamingContainer;

            int User_id = Convert.ToInt32(item.Cells[1].Text);
            bool isChecked = Report.Checked;

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Reported", con))
                {
                    con.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userid", User_id);
                    cmd.Parameters.AddWithValue("@IsReported", isChecked);

                    cmd.ExecuteNonQuery();
                    if (isChecked == true)
                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('success','User Is Reported');", true);
                    else
                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('success','User Is UnReported');", true);

                    con.Close();
                }
            }
        }
        protected void Active_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox Active = sender as CheckBox;
            DataGridItem item = (DataGridItem)Active.NamingContainer;

            int User_id = Convert.ToInt32(item.Cells[1].Text);
            bool IsActive = Active.Checked;

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Active", con))
                {
                    con.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userid", User_id);
                    cmd.Parameters.AddWithValue("@isActive", IsActive);

                    cmd.ExecuteNonQuery();
                    if (IsActive == true)
                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('success','User Is Activated');", true);
                    else
                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('success','User Is UnActive');", true);
                    con.Close();
                }
            }
        }


        private void PopulateStatistics()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {


                    using (SqlCommand sqlCommand = new SqlCommand("Ganeral_Statistics", con))
                    {
                        con.Open();
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        SqlDataReader reader = sqlCommand.ExecuteReader();
                        while (reader.Read())
                        {
                            StatDiv0.InnerHtml = reader["AllAccounts"].ToString();
                            StatDiv1.InnerHtml = reader["Customers"].ToString();
                            StatDiv2.InnerHtml = reader["HandyMen"].ToString();
                            StatDiv3.InnerHtml = reader["Workshops"].ToString();
                        }
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}