using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Participant : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;
        SqlCommand cm1;
        string event_name = TextBox1.Text;
        string event_time = TextBox2.Text;
        string event_venue = TextBox3.Text;

        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        if(TextBox3.Text=="")
        {
            string query = "Update EVENTT Set Event_time = '" + event_time +"' where Event_Name = '" + event_name + "' ";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();
        }

        else if (TextBox2.Text == "")
        {
            string query = "Update EVENTT Set Venue = '" + event_venue + "' where Event_Name = '" + event_name + "' ";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();
        }

        else
        {
            string query = "Update EVENTT Set Event_time = '" + event_time + "' where Event_Name = '" + event_name + "' ";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            string query1 = "Update EVENTT Set Venue = '" + event_venue + "' where Event_Name = '" + event_name + "' ";
            cm1 = new SqlCommand(query1, conn);
            cm1.ExecuteNonQuery();
            cm1.Dispose();
        }




        Server.Transfer("main_page.aspx");
    }
}