using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_sponser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;
        string Company_Name = TextBox1.Text;
        string Rep_Name = TextBox2.Text;
        string Rep_CNIC = TextBox3.Text;
        string Package = TextBox4.Text;

        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Insert into Sponsor(Company_Name, Representative_Name, Representative_CNIC, Package) values('" + Company_Name + "','" + Rep_Name + "','" + Rep_CNIC + "','" + Package + "')";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        Server.Transfer("Admin_Portal.aspx");


        conn.Close();
    }
}