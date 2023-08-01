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

        }

        protected void Sign_UP_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand com= new SqlCommand ())
                {
                    con.Open();
                    com.Connection = con;
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    com.CommandText = "CreateAccount";
                    com.Parameters.AddWithValue("@User_Name",username.Text);
                    com.Parameters.AddWithValue("@User_Email", email.Text);
                    com.Parameters.AddWithValue("@User_Phone",phone.Text);
                    com.Parameters.AddWithValue("@User_Password", password.Text);
                    com.Parameters.Add("msg", SqlDbType.Int);
                    com.Parameters["msg"].Direction = ParameterDirection.Output;
                    
                    com.ExecuteNonQuery();
                    con.Close();

                }
            }
        }
    }
}