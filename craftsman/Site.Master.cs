using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace craftsman
{
    public partial class SiteMaster : MasterPage
    {
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
                    link1.click = 
                    break;
            }

        }
    }
}