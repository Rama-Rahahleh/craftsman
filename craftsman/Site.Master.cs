using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace craftsman
{

    public partial class SiteMaster : MasterPage
    {
        string connectionString = ConfigurationManager.ConnectionStrings["craftman"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Session["id"]) {
                case 1:
                    link1.Text = "Admin page";
                    link1.NavigateUrl = "Admin/Control.aspx";
                    break;
                case 2:
                    link1.Text = "Workshop page";
                    link1.NavigateUrl = "Workshop_view.aspx";
                    break;
                case 3:
                    link1.Text = "Create a Workshop";
                    break;
            }
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT CATEGORY, CATEGORY_ID FROM Categories";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {

                        Search_Category.DataSource = reader;
                        Search_Category.DataTextField = "CATEGORY";
                        Search_Category.DataValueField = "CATEGORY_ID";
                        Search_Category.DataBind();
                    }
                    reader.Close();
                }
            }

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchQuery = SearchBar.Text;
            string selectedCategory = Search_Category.SelectedValue;

            // Call a method to perform the search and retrieve the results
            // Store the search results in a session variable
            Session["SearchResults"] = PerformSearch(searchQuery, selectedCategory);

            // Redirect the user to the search results page
            Response.Redirect("SearchResult.aspx");
        }
        private List<SearchResult> PerformSearch(string searchQuery, string selectedCategory)
        {
            List<SearchResult> Results = new List<SearchResult>();
            // Implement your search logic here
            // This can involve querying your database or any other data source
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(searchQuery, connection))
                {
                    command.Parameters.AddWithValue("@Category", selectedCategory);
                    command.Parameters.AddWithValue("@SearchKeyword", searchQuery);

                    // Execute the query and fetch results
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // Process the search results here
                            Results.Add(new SearchResult
                            {
                                WorkshopId = reader.GetInt32(0),
                                WorkshopName = reader.GetString(1),
                                WorkshopLocation = reader.GetString(2),
                                WorkshopPhone = reader.GetString(3),
                                Cover = reader.GetString(4),
                                Profile = reader.GetString(5),
                                TotalRate = reader.GetDecimal(6),
                            });
                            // Create a data structure to hold and display the results
                            // This could be a list, grid, or any other UI component.
                            // Populate the UI component with the workshop details.
                        }
                    }
                }
            }



            return Results;
        }
        public class SearchResult
        {
            public int WorkshopId { get; set; }
            public string WorkshopName { get; set; }
            public string WorkshopLocation { get; set; }
            public string WorkshopPhone { get; set; }
            public string Cover { get; set; }
            public string Profile { get; set; }
            public decimal TotalRate { get; set; }

        }
    }
}