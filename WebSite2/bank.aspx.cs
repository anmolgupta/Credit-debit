using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class bank : System.Web.UI.Page
{
    private static string constr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|Database.mdf;Integrated Security=True;User Instance=True";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        SqlConnection conn = new SqlConnection(constr);
        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "select * from credit where bank_code ="+DropDownList5.SelectedIndex+";";
        conn.Open();
        SqlDataReader dr = comm.ExecuteReader();
        int total=0;
        if (dr.HasRows == true)
        {

            GridView2.DataSource = dr;
            GridView2.DataBind();
                
            while (dr.Read())
            {
                total = total + Convert.ToInt32(""+dr["amount"]);
            }
        }
       
        conn.Close();
        Label1.Text = "TOTAL : " + total;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("query.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
