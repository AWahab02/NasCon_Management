using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class M_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        String query = "select  * from m_login";
        SqlCommand cmd = new SqlCommand(query, conn);

        SqlDataReader dr;

        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string user = Convert.ToString(dr[0]);//TextBox1=username
            string pwd = Convert.ToString(dr[1]);//TextBox2=password


            if ((TextBox2.Text == pwd) && (TextBox1.Text == user))
            {
                Response.Redirect("M_Reports.aspx?Name="+TextBox1.Text+"");
            }
            else
            {
                Label1.Text = (" invalid  username or password");

            }
        }


    }


}