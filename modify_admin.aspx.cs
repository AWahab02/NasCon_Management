using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class modify_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;

        string Old_Username = TextBox1.Text;
        string Old_Pass = TextBox2.Text;
        string New_Username = TextBox3.Text;
        string New_Password = TextBox4.Text;

        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Update login Set Username = '" +New_Username+ "' where Username = '" +Old_Username+ "' ";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        Server.Transfer("Admin_Portal.aspx");

        conn.Close();
    }
}