using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCountry();
            }
        }


        public void GetCountry()
        {
            SqlConnection con = new SqlConnection("Data Source=RAMESH-5FG0C11V;Initial catalog=db_vnr;Integrated security=true");
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from country", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddlcountry.DataTextField = "Country";
                ddlcountry.DataValueField = "CountryId";
                ddlcountry.DataSource = dt;
                ddlcountry.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=RAMESH-5FG0C11V;Initial catalog=db_vnr;Integrated security=true");
            try
            {
                SqlCommand cmd = new SqlCommand("select * from CountryState where countryid=@countryid", con);
                cmd.Parameters.AddWithValue("@countryid", ddlcountry.SelectedItem.Value);
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);
                ddlstate.DataTextField = "state";
                ddlstate.DataValueField = "stateid";
                ddlstate.DataSource = dt;
                ddlstate.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}