using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class modify_team : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;

        string Team_Name = TextBox1.Text;
        string Inst_Name = TextBox2.Text;
        string Head_Name = TextBox3.Text;
        string Head_Email = TextBox4.Text;
        string Head_CNIC = TextBox5.Text;
        string Head_Phone = TextBox6.Text;
        string no_of_members = TextBox7.Text;


        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Update Team Set Institute_Name = '" + Inst_Name + "', Head_Name = '" + Head_Name + "', Head_Email = '" + Head_Email + "', Head_CNIC = '" + Head_CNIC + "', Head_Phone = '" + Head_Phone + "', No_of_Members = '" + no_of_members + "' where Team_Name = '" + Team_Name + "' ";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        Server.Transfer("Admin_Portal.aspx");

        conn.Close();
    }
}