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
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class valid : System.Web.UI.Page
{
    private static string constr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|Database.mdf;Integrated Security=True;User Instance=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        tab();
        TextBox3.Text = ""+DateTime.Now;
    }
    void tab()
    {
        GridView2.Visible = true;
        SqlConnection conn = new SqlConnection(constr);
        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "select * from credit where valid = 1;";
        conn.Open();
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows == true)
        {

            GridView2.DataSource = dr;
            GridView2.DataBind();


        }
        conn.Close();
    
    }
    String trans,rec,purpose,amount,party,cheq_no,cheq_date,bankcode;
    public int binddata()
    {

        SqlConnection conn = new SqlConnection(constr);
        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        conn.Open();
        int n = 0;
        comm.CommandText = "select * from credit where valid= 1;";
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows == true)
        {
            
            while (dr.Read())
            {
                trans = "" + dr["transaction"];
                rec=""+dr["sys_date"];
                purpose = "" + dr["purpose"];
                amount = "" + dr["amount"];
                party = "" + dr["party"];
                cheq_no = "" + dr["cheque_no"];
                cheq_date = "" + dr["cheque_date"];
                bankcode = "" + dr["bank_code"];
                if ((cheq_no == TextBox1.Text.Trim()) && (amount == TextBox2.Text.Trim()))
                {
                    
                    n = -1;
                    conn.Close();
                    return n;
                    
                }

                else
                    n = 0;
            }
        }

        conn.Close();
        return n;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = binddata();
        if (n == 0)
        {
            Label1.Text = ""+n+"Enter a valid Cheque no.!!!";
        }
        else
        {

            SqlConnection conn = new SqlConnection(constr);
            SqlCommand comm = new SqlCommand();
            comm.Connection = conn;
            comm.CommandText = "update credit set valid= 0 where cheque_no="+TextBox1.Text.Trim()+";";
            conn.Open();
            int n1 = comm.ExecuteNonQuery();
            conn.Close();
            comm.CommandText = "insert into debit values ('"+trans+"','"+rec+"','"+purpose+"',"+amount+",'"+party+"',"+cheq_no+",'"+cheq_date+"',"+bankcode+",'"+DateTime.Now+"');";
            conn.Open();
            n1 = comm.ExecuteNonQuery();
            conn.Close();
            Label1.Text = "Updated Successfully !!!";
            tab();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("debit.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}