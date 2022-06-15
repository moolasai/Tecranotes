using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void username_TextChanged(object sender, EventArgs e)
        {

        }

   

        protected void login_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=RAMESH-5FG0C11V;initial catalog=db_vnr;Integrated security=true");

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbl_vnrdata where emailid=@emailid and password=@password", con);
                cmd.Parameters.AddWithValue("@emailid", username.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Status"].ToString().ToLower() == "true")
                    {
                        if (dr["Role"].ToString() == "Student")
                        {
                            
                            Response.Redirect("student.aspx");
                        }
                        if (dr["Role"].ToString() == "HOD")
                        {
                            Response.Redirect("hod.aspx");-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                        }
                        else
                        {
                            Response.Redirect("home.aspx");
                        }



                    }
                    else
                    {
                        Response.Write("User is Inactive");
                    }

                }
                else
                {
                    Response.Write("Username or pwd is Invalid!");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }


        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}