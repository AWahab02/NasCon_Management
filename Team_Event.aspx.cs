using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Team_Event : System.Web.UI.Page
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
        SqlCommand cm2;
        SqlCommand cm3;
        string Team_Name = TextBox1.Text;
        string Institute_Name = TextBox2.Text;
        string Head_Name = TextBox3.Text;
        string Head_Email = TextBox4.Text;
        string Head_CNIC = TextBox5.Text;
        string Head_Phone = TextBox6.Text;
        string Member2_Name = TextBox7.Text;
        string Member2_Email = TextBox8.Text;
        string Member2_CNIC = TextBox9.Text;
        string Member2_Contact = TextBox10.Text;
        string Member3_Name = TextBox11.Text;
        string Member3_Email = TextBox12.Text;
        string Member3_CNIC = TextBox13.Text;
        string Member3_Contact = TextBox14.Text;
        string no_of_members = TextBox15.Text;
        string Head_Deal = TextBox16.Text;
        string Member2_Deal = TextBox17.Text;
        string Member3_Deal = TextBox18.Text;



        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Insert into TEAM(Team_Name, Institute_Name, Head_Name, Event_Name, Cat_Name, Head_Email, Head_CNIC, Head_Phone, no_of_members) values('" + Team_Name + "','" + Institute_Name + "','" + Head_Name + "','" + eventname + "','" + catname + "','" + Head_Email + "','" + Head_CNIC + "','" + Head_Phone + "','" + no_of_members + "')"; SqlCommand cmd = new SqlCommand(query, conn);
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        if (TextBox15.Text == "1")
        {
            string query1 = "Insert into PARTICIPANT(Participant_CNIC, Participant_Name, Team_Name, Participant_Email, Participant_Phone, FOOD_DEAL) values('" + Head_CNIC + "','" + Head_Name + "','" + Team_Name + "','" + Head_Email + "','" + Head_Phone + "','" + Head_Deal + "')";
            cm1 = new SqlCommand(query1, conn);
            cm1.ExecuteNonQuery();
            cm1.Dispose();
        }

        if (TextBox15.Text == "2")
        {
            string query1 = "Insert into PARTICIPANT(Participant_CNIC, Participant_Name, Team_Name, Participant_Email, Participant_Phone, FOOD_DEAL) values('" + Head_CNIC + "','" + Head_Name + "','" + Team_Name + "','" + Head_Email + "','" + Head_Phone + "','" + Head_Deal + "')";
            cm1 = new SqlCommand(query1, conn);
            cm1.ExecuteNonQuery();
            cm1.Dispose();

            string query2 = "Insert into PARTICIPANT(Participant_CNIC, Participant_Name, Team_Name, Participant_Email, Participant_Phone, FOOD_DEAL) values('" + Member2_CNIC + "','" + Member2_Name + "','" + Team_Name + "','" + Member2_Email + "','" + Member2_Contact + "','" + Member2_Deal + "')";
            cm2 = new SqlCommand(query2, conn);
            cm2.ExecuteNonQuery();
            cm2.Dispose();
        }

        if (TextBox15.Text == "3")
        {
            string query1 = "Insert into PARTICIPANT(Participant_CNIC, Participant_Name, Team_Name, Participant_Email, Participant_Phone, FOOD_DEAL) values('" + Head_CNIC + "','" + Head_Name + "','" + Team_Name + "','" + Head_Email + "','" + Head_Phone + "','" + Head_Deal + "')";
            cm1 = new SqlCommand(query1, conn);
            cm1.ExecuteNonQuery();
            cm1.Dispose();

            string query2 = "Insert into PARTICIPANT(Participant_CNIC, Participant_Name, Team_Name, Participant_Email, Participant_Phone, FOOD_DEAL) values('" + Member2_CNIC + "','" + Member2_Name + "','" + Team_Name + "','" + Member2_Email + "','" + Member2_Contact + "','" + Member2_Deal + "')";
            cm2 = new SqlCommand(query2, conn);
            cm2.ExecuteNonQuery();
            cm2.Dispose();

            string query3 = "Insert into PARTICIPANT(Participant_CNIC, Participant_Name, Team_Name, Participant_Email, Participant_Phone, FOOD_DEAL) values('" + Member3_CNIC + "','" + Member3_Name + "','" + Team_Name + "','" + Member3_Email + "','" + Member3_Contact + "','" + Member3_Deal + "')";
            cm3 = new SqlCommand(query3, conn);
            cm3.ExecuteNonQuery();
            cm3.Dispose();
        }

        Server.Transfer("main_page.aspx");

        conn.Close();


    }
}