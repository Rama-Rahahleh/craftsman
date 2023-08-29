using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Web.UI.HtmlControls;

namespace craftsman.Admin
{
    public partial class Accounts_Categories : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["craftman"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FetchCategoryNames();
            }
        }

        private void FetchCategoryNames()
        {
            List<CategoryInfo> categoryList = new List<CategoryInfo>();

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {

                using (SqlCommand sqlCommand = new SqlCommand("CATEGORY", connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = sqlCommand.ExecuteReader())
                    {

                        while (reader.Read())
                        {
                            categoryList.Add(new CategoryInfo
                            {
                                CategoryName = reader["CATEGORY"].ToString(),
                                CategoryCount = Convert.ToInt32(reader["CategoriesCount"].ToString())
                            }); ;
                        }
                    }
                }
            }

            AccordionRepeater.DataSource = categoryList;
            AccordionRepeater.DataBind();
        }




        protected void AccordionRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                CategoryInfo categoryInfo = e.Item.DataItem as CategoryInfo;
                if (categoryInfo != null)
                {
                    int categoryCount = categoryInfo.CategoryCount;
                    string categoryName = categoryInfo.CategoryName;

                    PlaceHolder placeholder = e.Item.FindControl("placeholder") as PlaceHolder;
                    if (placeholder != null && categoryCount > 0)
                    {
                        RenderCategoryCards(placeholder, categoryCount, categoryName);
                    }
                }
            }
        }

        protected void RenderCategoryCards(PlaceHolder placeholder, int categoryCount, string categoryName)
        {
   
                var row = new HtmlGenericControl("div");
                row.Attributes["class"] = "row";

                Panel cardPanel = new Panel();
                cardPanel.CssClass ="col-md-4";

                Panel card = new Panel();
                card.CssClass = "card [ is-collapsed ]";

                Panel cardInner = new Panel();
                cardInner.CssClass = "card__inner [ js-expander ]";

                Literal categoryLabel = new Literal();
                categoryLabel.Text = "<span>" + categoryName + "</span>";

                // Create other card elements here

                cardInner.Controls.Add(categoryLabel);
                //Add other controls to cardInner

                //// Add cardInner to card

                cardPanel.Controls.Add(card);
                card.Controls.Add(cardInner); // Add cardInner to card
                row.Controls.Add(cardPanel);
                placeholder.Controls.Add(row);
            }
        }
           
    }
    public class CategoryInfo
    {
        public string CategoryName { get; set; }
        public int CategoryCount { get; set; }
    }

