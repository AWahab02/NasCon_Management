using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Individual_Event : System.Web.UI.Page
{
    public string eventname;
    public string catname;
    public string var1;
    public string var2;
    public string var3;
    public string var4;
    public string var5;
    public string var6;

    protected void Page_Load(object sender, EventArgs e)
    {
        eventname = Request.QueryString["name"];


        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "select Venue,Reg_Price,Min_Entries,Max_Entries,Event_Date,Event_Time,Cat_Name from EVENTT where Event_Name='" + eventname + "'";
        SqlCommand cmd = new SqlCommand(query, conn);

        SqlDataReader dr;

        dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            string venue = Convert.ToString(dr[0]);
            string reg = Convert.ToString(dr[1]);
            string min = Convert.ToString(dr[2]);
            string max = Convert.ToString(dr[3]);
            string date = Convert.ToString(dr[4]);
            string time = Convert.ToString(dr[5]);
            string cat = Convert.ToString(dr[6]);

            var1 = venue;
            var2 = reg;
            var3 = min;
            var4 = max;
            var5 = date;
            var6 = time;
            catname = cat;

        }


    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;
        SqlCommand cm1;
        string Name = TextBox1.Text;
        string Institute_Name = TextBox2.Text;
        string Email = TextBox3.Text;
        string CNIC = TextBox4.Text;
        string Contact_No = TextBox5.Text;
        string Team_Name = TextBox6.Text;
        string food_deal = TextBox7.Text;


        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Insert into TEAM(Team_Name, Institute_Name, Head_Name,Event_Name, Cat_Name, Head_Email, Head_CNIC, Head_Phone, no_of_members) values('" + Team_Name + "','" + Institute_Name + "','" + Name + "','" + eventname + "','" + catname + "','" + Email + "','" + CNIC + "','" + Contact_No + "','" + 1 + "')";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        string query1 = "Insert into PARTICIPANT(Participant_CNIC, Participant_Name, Team_Name, Participant_Email, Participant_Phone, FOOD_DEAL) values('" + CNIC + "','" + Name + "','" + Team_Name + "','" + Email + "','" + Contact_No + "','" + food_deal + "')";
        cm1 = new SqlCommand(query1, conn);
        cm1.ExecuteNonQuery();
        cm1.Dispose();

        Server.Transfer("main_page.aspx");


        conn.Close();
    }
}