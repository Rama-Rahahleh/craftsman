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
            if (!IsPostBack) {
                Load_Category();
            }
        }
        private void Load_Category()
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                string query = "SELECT TYPE_NAME, TYPE_ID FROM ReportsTypes";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {

                        type.DataSource = reader;
                        type.DataTextField = "TYPE_NAME";
                        type.DataValueField = "TYPE_ID";
                        type.DataBind();
                    }
                    reader.Close();
                }
            }
        }
        protected void Add_Report(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand com = new SqlCommand("insert into Reports (TYPE,DESCRIPTION) VALUES (@type,@desc)", con))
                {

                    com.Connection = con;
                    con.Open();
                    com.Parameters.AddWithValue("@type", type.SelectedValue);
                    com.Parameters.AddWithValue("@desc", description.Text);
                    com.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
            protected void _Click(object sender, EventArgs e)
            {
                ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "OpenPopUp();", true);
            }

        //    protected void Create_Workshop(object sender, EventArgs e)
        //    {
        //    try
        //    {
        //        if (Page.IsValid)
        //        {
        //            using (SqlConnection con = new SqlConnection(ConnectionString))
        //            {
        //                using (SqlCommand com = new SqlCommand("CreateWorkshop", con))
        //                {

        //                    com.Connection = con;
        //                    com.CommandType = System.Data.CommandType.StoredProcedure;
        //                    con.Open();
        //                    com.CommandText = "CreateWorkshop";
        //                    com.Parameters.AddWithValue("@UserId", 1);
        //                    com.Parameters.AddWithValue("@WorkshopName", Workshop_name.Text);
        //                    com.Parameters.AddWithValue("@WorkshopPhone", Workshop_phone.Text);
        //                    com.Parameters.AddWithValue("@WorkshopLocation", Workshop_address.Text);
        //                    com.Parameters.AddWithValue("@Category", Category.SelectedValue);



        //                    if (Profile_file.HasFile)
        //                    {
        //                        string filepath = @"~/HandyManImages/" + Profile_file.FileName.ToString();
        //                        Profile_file.SaveAs(Server.MapPath(filepath));
        //                        com.Parameters.AddWithValue("@Profile", filepath);
        //                    }
        //                    else
        //                    {
        //                        com.Parameters.AddWithValue("@Profile", DBNull.Value);
        //                    }
        //                    if (Cover_file.HasFile)
        //                    {
        //                        string filepath_Cover = @"~/HandyManImages/" + Cover_file.FileName.ToString();
        //                        Profile_file.SaveAs(Server.MapPath(filepath_Cover));
        //                        com.Parameters.AddWithValue("@Cover", filepath_Cover);
        //                    }
        //                    else
        //                    {
        //                        com.Parameters.AddWithValue("@Cover", DBNull.Value);
        //                    }
        //                    com.Parameters.Add("@msg", SqlDbType.Int);
        //                    com.Parameters["@msg"].Direction = ParameterDirection.Output;


        //                    com.ExecuteNonQuery();

        //                    int result = Convert.ToInt32(com.Parameters["@msg"].Value);
        //                    if (result == 1)
        //                    {

        //                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('success','Workshop Created successfully!');", true);
        //                    }
        //                    else if (result == -1)
        //                    {

        //                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('error','The Workshop is Already existed');", true);
        //                    }


        //                    con.Close();
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception error)
        //    {
        //        error_msg.Text = error.ToString();
        //    }



        //}
        }
    } 