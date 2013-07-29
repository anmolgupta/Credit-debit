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

public partial class credit : System.Web.UI.Page
{
    int yr = Convert.ToInt32(DateTime.Now.Year);
    int mon = Convert.ToInt32(DateTime.Now.Month);
    int dat = Convert.ToInt32(DateTime.Now.Day);
    int num;
    int total ;
    private static string constr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|Database.mdf;Integrated Security=True;User Instance=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Select year");
            for (int i = 2001; i <= yr; i++)

                DropDownList2.Items.Add("" + i);
            TextBox2.Text = dat + "/" + mon + "/" + yr;
            up();

        }
   
    }

    protected void up()
    {
            SqlConnection conn = new SqlConnection(constr);
            SqlCommand comm = new SqlCommand();
            comm.Connection = conn;
            String zone = ""+Session["zone"];
            comm.CommandText = "select num from credit where zone = '" + zone + "' order by num";
            conn.Open();
            SqlDataReader dr = comm.ExecuteReader();

            if (dr.HasRows == true)
            {
                while (dr.Read())
                {
                    num = Convert.ToInt32(dr["num"]);

                }
                
                num++;

            }
            else
            {
                num=1;
            }
       
            conn.Close();
            TextBox1.Text = ""+Session["zone"]+""+num;
            Session["num"] = "" + num;
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            num = Convert.ToInt32("" + Session["num"]);
            String sdate = "" + DropDownList2.SelectedValue + "-" + DropDownList3.SelectedValue + "-" + DropDownList4.SelectedValue;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            String zone1 = "" + Session["zone"];
            com.CommandText = "insert into credit values ('" + TextBox1.Text + "','" + zone1 + "'," + num + ",'" + DateTime.Now + "','" + DropDownList1.SelectedItem + "'," + TextBox3.Text + ",'" + TextBox4.Text + "'," + TextBox5.Text + ",'" + sdate + "'," + DropDownList5.SelectedIndex + ",1);";
            con.Open();
            int dr1 = 0;
            dr1 = com.ExecuteNonQuery();
            com.CommandText = "insert into credit_temp values ('" + TextBox1.Text + "','" + zone1 + "'," + num + ",'" + DateTime.Now + "','" + DropDownList1.SelectedItem + "'," + TextBox3.Text + ",'" + TextBox4.Text + "'," + TextBox5.Text + ",'" + sdate + "'," + DropDownList5.SelectedIndex + ");";
            dr1 = com.ExecuteNonQuery();
            Label2.Text = "ENTERED SUCCESSFULLY";
            con.Close();
            total = Convert.ToInt32("" + Session["total"]) + Convert.ToInt32("" + TextBox3.Text);
            Session["total"] = "" + total;
            Label1.Text = "" + total;
            ++num;
            TextBox1.Text = "" + Session["zone"] + "" + num;
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Session["num"] = "" + num;
        
    } 
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int syr = Convert.ToInt32(DropDownList2.SelectedItem.Text);
        
        if (syr == yr)
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Select month");
            for (int j = 1; j <= mon; j++)
            {
                DropDownList3.Items.Add("" + j);
            }
        }
        else
        {

            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Select month");
            for (int j = 1; j <= 12; j++)
            {
                DropDownList3.Items.Add("" + j);
            }


        }


    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        int syr = Convert.ToInt32(DropDownList2.SelectedItem.Text);
        int smon = Convert.ToInt32(DropDownList3.SelectedItem.Text);
        if (syr == yr && smon == mon)
        {
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add("Select Date");
            for (int i = 1; i <= dat; i++)
                DropDownList4.Items.Add("" + i);

        }
        else
        {
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add("Select date");
            if (DropDownList3.SelectedItem.Text == "2")
            {
                if (syr % 4 == 0)
                {
                    for (int i = 1; i <= 29; i++)
                        DropDownList4.Items.Add(i.ToString());
                }
                else
                {
                    for (int i = 1; i <= 28; i++)
                        DropDownList4.Items.Add(i.ToString());
                }
            }
            else if (DropDownList3.SelectedItem.Text == "1" || DropDownList3.SelectedItem.Text == "3" || DropDownList3.SelectedItem.Text == "5" || DropDownList3.SelectedItem.Text == "7" || DropDownList3.SelectedItem.Text == "8" || DropDownList3.SelectedItem.Text == "10" || DropDownList3.SelectedItem.Text == "12")
            {
                for (int i = 1; i <= 31; i++)
                    DropDownList4.Items.Add(i.ToString());
            }
            else
            {
                for (int i = 1; i <= 30; i++)
                    DropDownList4.Items.Add(i.ToString());
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("select_opt.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("report.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}
