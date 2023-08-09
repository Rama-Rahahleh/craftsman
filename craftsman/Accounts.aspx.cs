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
                        while(dr.Read())
                        {
                            
                            if (dr["USER_TYPE"].ToString() == "1") {
                                Response.Redirect("Admin/Control.aspx");
                            }
                            else if (dr["USER_TYPE"].ToString() == "2")
                            {

                            }
                            
                        }
                    }else if (cmd.Parameters["@msg"].Value != DBNull.Value)
                    {
                        int result = Convert.ToInt32(cmd.Parameters["@msg"].Value);

                        if (result == -1)
                        {
                            Literal2.Visible = true;
                            Literal2.Text = $"<p class='text-danger'>Invalid Email or Password.</p>";

                        }
                        else if (result == 0)
                        {
                            Literal2.Visible = true;
                            Literal2.Text = $"<p class='text-danger'>Email is not Found .</p>";
                        }
                        
                    }
                }
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
                        
                        msg.InnerText = "Sign up successful!";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "ShowPopup();", true);
                    }
                    else if (result == -1)
                    {
                        
                        msg.InnerText = "Can't accept email";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "ShowPopup();", true);
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