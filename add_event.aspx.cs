using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_event : System.Web.UI.Page
{
    bool check = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;

        string Event_Name = TextBox1.Text;
        string Cat_Name = TextBox2.Text;
        string Mentor_ID = TextBox3.Text;
        string Secratery_Roll_No = TextBox4.Text;
        string Head_Roll_No = TextBox5.Text;
        string Venue = TextBox6.Text;
        string Reg_Price = TextBox7.Text;
        string Min_Entries = TextBox8.Text;
        string Max_Entries = TextBox9.Text;
        string Event_Date = TextBox10.Text;
        string Event_Time = TextBox11.Text;

        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        String query1 = "select  * from EVENTT";
        SqlCommand cmd = new SqlCommand(query1, conn);

        SqlDataReader dr;

        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            string user = Convert.ToString(dr[0]);//TextBox1=username
            string v2 = Convert.ToString(dr[1]);


            if (TextBox1.Text == user && TextBox2.Text == v2)
            {
                Label1.Text = ("Event Name already exsist");
                check = false;
                break;
            }
            else
            {

                check = true;
            }
        }
        conn.Close();



        conn.Open();



        if (check == true)
        {


            string query = "Insert into EVENTT(Event_Name, Cat_Name, Mentor_ID, Secratery_Rollno, Head_Rollno, Venue, Reg_Price, Min_Entries, Max_Entries, Event_Date, Event_Time) values('" + Event_Name + "','" + Cat_Name + "','" + Mentor_ID + "','" + Secratery_Roll_No + "','" + Head_Roll_No + "','" + Venue + "','" + Reg_Price + "','" + Min_Entries + "','" + Max_Entries + "','" + Event_Date + "','" + Event_Time + "')";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            Server.Transfer("Admin_Portal.aspx");


            conn.Close();
        }
    }
}