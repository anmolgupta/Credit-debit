using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Xml.Linq;

public partial class selecton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private static string constr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|Database.mdf;Integrated Security=True;User Instance=True";
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "delete from credit_temp;";
        con.Open();
        int dr1 = com.ExecuteNonQuery();
        con.Close();        
        Session["zone"]=""+DropDownList1.SelectedValue;
        Session["total"]="0";
        Response.Redirect("select_opt.aspx");
    }
}
