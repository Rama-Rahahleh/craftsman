using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace craftsman
{
    public partial class PopUpTest : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["craftman"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void _Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "key", "OpenPopUp();", true);
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "OpenPopUp();", true);


        }

        protected void Create_Workshop(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    using (SqlConnection con = new SqlConnection(ConnectionString))
                    {
                        using (SqlCommand com = new SqlCommand("CreateWorkshop", con))
                        {

                            com.Connection = con;
                            com.CommandType = System.Data.CommandType.StoredProcedure;
                            con.Open();
                            com.CommandText = "CreateWorkshop";
                            com.Parameters.AddWithValue("@UserId", 1);
                            com.Parameters.AddWithValue("@WorkshopName", Workshop_name.Text);
                            com.Parameters.AddWithValue("@WorkshopPhone", Workshop_phone.Text);
                            com.Parameters.AddWithValue("@WorkshopLocation", Workshop_address.Text);
                            com.Parameters.AddWithValue("@Category", Category.SelectedValue);


                            com.Parameters.AddWithValue("@Profile", ".");
                            com.Parameters.AddWithValue("@Cover", ".");
                            if (Profile_file.HasFile)
                            {
                                string filepath = @"~/HandyManImages/" + Profile_file.FileName.ToString();
                                Profile_file.SaveAs(Server.MapPath(filepath));

                            }
                            if (Cover_file.HasFile)
                            {

                            }
                            com.Parameters.Add("@msg", SqlDbType.Int);
                            com.Parameters["@msg"].Direction = ParameterDirection.Output;


                            com.ExecuteNonQuery();

                            int result = Convert.ToInt32(com.Parameters["@msg"].Value);
                            if (result == 1)
                            {

                                //msg.InnerText = "Sign up successful!";
                                //ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "OpenPopUp();", true);
                                //ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('success','Sign up successful!');", true);
                            }
                            else if (result == -1)
                            {

                                //msg.InnerText = "Can't accept email";
                                //ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "OpenPopUp();", true);
                                //ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('error','Cant't accept email');", true);
                            }


                            con.Close();
                        }
                    }
                }
            }
            catch (Exception error)
            {
                error_msg.Text = error.ToString();
            }



        }
    }
}