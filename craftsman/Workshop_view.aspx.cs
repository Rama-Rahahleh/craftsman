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
    public partial class Workshop_view : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["craftman"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve and display the cover picture
                DisplayCoverPicture();

                // Load page posts from the database and bind them to the repeater
                BindPagePosts();
            }
        }
        private void DisplayCoverPicture()
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                string query = "SELECT Cover FROM Workshops WHERE User_ID = @id";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Assuming you have a CoverID value to retrieve the cover
                    command.Parameters.AddWithValue("@id", (int)Session["id"]);

                    connection.Open();
                    string coverFilePath = (string)command.ExecuteScalar();
                    // Set the ImageUrl of the cover image control
                    Image_cover.ImageUrl = coverFilePath;
                }
                query = "SELECT Profile FROM Workshops WHERE User_ID = @id";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Assuming you have a CoverID value to retrieve the cover
                    command.Parameters.AddWithValue("@id", (int)Session["id"]);

                    string coverFilePath = (string)command.ExecuteScalar();
                    // Set the ImageUrl of the cover image control
                    Image_profile.ImageUrl = coverFilePath;
                }
            }
        }
        private void BindPagePosts()
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                string query = "SELECT DESCREPTION, FILE_PATH, POST_DATE,FILE_TYPE,Workshop_ID,POST_ID  FROM Posts WHERE Workshop_ID = 1 ORDER BY POST_DATE DESC";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {
                        repeaterPosts.DataSource = reader;
                        repeaterPosts.DataBind();
                    }
                    reader.Close();
                }
            }
        }

    }
}