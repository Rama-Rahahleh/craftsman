using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace craftsman
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the search results from the session variable
                List<SearchResult> searchResults = Session["SearchResults"] as List<SearchResult>;

                // Bind the search results to the GridView
                ResultRepeater.DataSource = searchResults;
                ResultRepeater.DataBind();
            }
        }
    }
}