using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace craftsman.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["craftman"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateFAQAccordion();
            }

        }

        protected void OpenForm_Click(object sender, EventArgs e)
        {

            AddCategory.Visible = true;
            CategoryAccordion.Visible = false;
            OpenForm.Visible = false;

        }

        protected void AddToDB_Click(object sender, EventArgs e)
        {
            AddCategory.Visible = false;
            CategoryAccordion.Visible = true;
            if (Page.IsValid)
            {


                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("AddNewCategory", con))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@new_category", category.Text);
                        cmd.Parameters.AddWithValue("@Description", description.Value);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        PopulateFAQAccordion();
                        category.Text = "";
                        description.Value = "";
                        OpenForm.Visible = true;
                    }
                }
            }
        }


        public void PopulateFAQAccordion()
        {
            try
            {
                CategoryAccordion.Controls.Clear();
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Categories", connection))
                    {
                        sqlCommand.Connection = connection;
                        connection.Open();

                        SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);
                        DataTable dataTable = new DataTable();
                        dataAdapter.Fill(dataTable);

                        CategoryAccordion.Controls.Clear();

                        for (int i = 0; i < dataTable.Rows.Count; i++)
                        {

                            string category = dataTable.Rows[i]["CATEGORY"].ToString();
                            string description = dataTable.Rows[i]["DESCRIPTION"].ToString();

                            if (!string.IsNullOrEmpty(category) && !string.IsNullOrEmpty(description))
                            {
                                var accordionItem = new HtmlGenericControl("div");
                                accordionItem.Attributes["class"] = "accordion-item";

                                var accordionHeader = new HtmlGenericControl("h2");
                                accordionHeader.Attributes["class"] = "accordion-header";
                                accordionHeader.Attributes["id"] = "heading" + i;

                                var button = new HtmlGenericControl("button");
                                button.Attributes["class"] = "accordion-button";
                                button.Attributes["type"] = "button";
                                button.Attributes["data-bs-toggle"] = "collapse";
                                button.Attributes["data-bs-target"] = "#collapse" + i;
                                button.Attributes["aria-expanded"] = "true";
                                button.Attributes["aria-controls"] = "collapse" + i;
                                button.InnerText = dataTable.Rows[i]["CATEGORY"].ToString();

                                accordionHeader.Controls.Add(button);
                                accordionItem.Controls.Add(accordionHeader);

                                var accordionCollapse = new HtmlGenericControl("div");
                                accordionCollapse.Attributes["id"] = "collapse" + i;
                                accordionCollapse.Attributes["class"] = "accordion-collapse collapse";
                                accordionCollapse.Attributes["aria-labelledby"] = "heading" + i;
                                accordionCollapse.Attributes["data-bs-parent"] = "#CategoryAccordion";

                                var accordionBody = new HtmlGenericControl("div");
                                accordionBody.Attributes["class"] = "accordion-body";
                                accordionBody.InnerText = dataTable.Rows[i]["DESCRIPTION"].ToString();

                                accordionCollapse.Controls.Add(accordionBody);
                                accordionItem.Controls.Add(accordionCollapse);
                                CategoryAccordion.Controls.Add(accordionItem);

                            }
                        }

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