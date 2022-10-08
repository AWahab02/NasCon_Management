using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class modify_sponser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;

        string Old_Name = TextBox1.Text;
        string Package = TextBox2.Text;



        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Update Sponsor Set Package = '" +Package+ "' where Company_Name = '"+Old_Name+"'";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        Server.Transfer("Admin_Portal.aspx");

        conn.Close();
    }
}