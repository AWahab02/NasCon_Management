using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class add_team : System.Web.UI.Page
{
    bool check = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;
        string Team_Name = TextBox1.Text;
        string Institute_Name = TextBox2.Text;
        string Head_Name = TextBox3.Text;
        string Head_Email = TextBox4.Text;
        string Head_CNIC = TextBox5.Text;
        string Head_Phone = TextBox6.Text;
        string no_of_members = TextBox7.Text;
        string Event_Name = TextBox8.Text;
        string Cat_Name = TextBox9.Text;


        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();


        String query1 = "select  * from TEAM";
        SqlCommand cmd = new SqlCommand(query1, conn);

        SqlDataReader dr;

        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            string user = Convert.ToString(dr[0]);//TextBox1=username



            if (TextBox1.Text == user)
            {
                Label1.Text = ("Team Name already exsist");
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

            string query = "Insert into TEAM(Team_Name, Institute_Name, Head_Name, Event_Name, Cat_Name, Head_Email, Head_CNIC, Head_Phone, no_of_members) values('" + Team_Name + "','" + Institute_Name + "','" + Head_Name + "','" + Event_Name + "','" + Cat_Name + "','" + Head_Email + "','" + Head_CNIC + "','" + Head_Phone + "','" + no_of_members + "')";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            Server.Transfer("Admin_Portal.aspx");


            conn.Close();
        }
    }
}