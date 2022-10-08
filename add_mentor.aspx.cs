using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_mentor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {

        SqlCommand cm;
        string Mentor_Name = TextBox1.Text;
        string Mentor_Pass = TextBox2.Text;


        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Insert into Faculty_Mentor(EMP_ID, EMP_Name) values('" + Mentor_Name + "','" + Mentor_Pass + "')";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        Server.Transfer("Admin_Portal.aspx");


        conn.Close();

    }
}