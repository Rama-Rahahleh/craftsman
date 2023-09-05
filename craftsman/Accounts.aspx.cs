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
    public partial class Accounts : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["craftman"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            Validate();
        }

        protected void signIn_Click(object sender, EventArgs e)
        {

            SignUpDiv.Visible = true;
            SignINDIV.Visible = false;
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            SignUpDiv.Visible = false;
            SignINDIV.Visible = true;
        }

        protected void Sign_In_Click(object sender, EventArgs e)
        {
            string email = useremail.Text;
            string password = userpassword.Text;

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Login", con))
                {
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "Login";
                    cmd.Parameters.AddWithValue("@User_Email", email);
                    cmd.Parameters.AddWithValue("@User_Password", password);
                    cmd.Parameters.Add("@msg", SqlDbType.Int).Direction = ParameterDirection.Output;

                    con.Open();
                    SqlDataReader dr=cmd.ExecuteReader();
                    if(dr.HasRows==true)
                    {
                        Session["type"] = dr["USER_TYPE"];
                        Session["id"] = dr["USER_ID"];
                        while (dr.Read())
                        {
                            switch (dr["USER_TYPE"].ToString()) {
                                case "1":
                                    Response.Redirect("Admin/Control.aspx");
                                    break;
                                case "2":
                                    Response.Redirect("Workshop_view.aspx");
                                    break;
                                case "3":
                                    Response.Redirect("Default.aspx");
                                    break;
                            }
                        }
                    }else if (cmd.Parameters["@msg"].Value != DBNull.Value)
                    {
                        int result = Convert.ToInt32(cmd.Parameters["@msg"].Value);

                        if (result == -1)
                        {
                            ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('error','Invalid Email or Password.');", true);
                        }
                        else if (result == 0)
                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('error','Email Not Found');", true);
                    }
                }
                con.Close();
                useremail.Text = string.Empty;
                userpassword.Text = string.Empty;
            }
        }

        protected void Sign_UP_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand com = new SqlCommand("CreateAccount", con))
                {

                    com.Connection = con;
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    com.CommandText = "CreateAccount";
                    com.Parameters.AddWithValue("@User_Name", username.Text);
                    com.Parameters.AddWithValue("@User_Email", email.Text);
                    com.Parameters.AddWithValue("@User_Phone", phone.Text);
                    com.Parameters.AddWithValue("@User_Password", password.Text);
                    com.Parameters.Add("@msg", SqlDbType.Int);
                    com.Parameters["@msg"].Direction = ParameterDirection.Output;


                    com.ExecuteNonQuery();

                    int result = Convert.ToInt32(com.Parameters["@msg"].Value);
                    if (result == 1)
                    {
                        ScriptManager.RegisterStartupScript(UpdatePanel1,UpdatePanel1.GetType(),"CallMyFunction", "showContent('success','Sign up successful!');",true);
                    }
                    else if (result == -1)
                    {
                        ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "CallMyFunction", "showContent('error','Cant't accept email');", true);
                    }
                    con.Close();
                }
            }
            email.Text = string.Empty;
            phone.Text = string.Empty;
            username.Text = string.Empty;
            password.Text = string.Empty;
        }

    }
}