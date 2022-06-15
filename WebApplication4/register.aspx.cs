using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        protected void savedata_Click(object sender, EventArgs e)
        {
            //Logic for Inserting Data
            SqlConnection con = new SqlConnection("Data Source=RAMESH-5FG0C11V;initial catalog=db_vnr;Integrated security=true");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("spp_insert", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", txtpwd.Text);
                cmd.Parameters.AddWithValue("@dob", txtdob.Text);
                cmd.Parameters.AddWithValue("@gender", rdgender.SelectedValue);
                cmd.Parameters.AddWithValue("@department", ddldept.SelectedValue);
                cmd.Parameters.AddWithValue("@role", ddlrole.SelectedValue);
                cmd.Parameters.AddWithValue("@status", ddlstatus.SelectedValue);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Write("Something Went Wrong!");
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


    }
}