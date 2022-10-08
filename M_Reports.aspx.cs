using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class M_Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        int choice = DropDownList1.SelectedIndex;
        string name = Request.QueryString["Name"];

        Textbox1.Visible = false;
        Textbox1.Enabled = false;
        Textbox2.Visible = false;
        Textbox2.Enabled = false;


        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();
        if (choice==1)
        {
            if(name=="hassan123")
            {
                SqlCommand cm;
                string query = "select * from Participant inner join Team on Participant.Team_Name = Team.team_Name where Team.Cat_Name='CS' OR Team.Cat_Name='Sports' ";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Umer123")
            {
                SqlCommand cm;
                string query = "select * from Participant inner join Team on Participant.Team_Name = Team.team_Name where Team.Cat_Name='EE'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                SqlCommand cm;
                string query = "select * from Participant inner join Team on Participant.Team_Name = Team.team_Name where Team.Cat_Name='Social' OR Team.Cat_Name='Business'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 2)
        {
            if (name == "hassan123")
            {
                SqlCommand cm;
                string query = "select * from Eventt where Cat_Name = 'CS' or Cat_Name='Sports' ";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Umer123")
            {
                SqlCommand cm;
                string query = "select * from Eventt where Cat_Name = 'EE'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                SqlCommand cm;
                string query = "select * from Eventt where Cat_Name = 'Social' or Cat_Name='Business' ";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 3)
        {
            if (name == "hassan123")
            {
                SqlCommand cm;
                string query = "select * from STUDENT_EXEC inner join eventt on STUDENT_EXEC.Event_Assigned=eventt.Event_Name where Cat_Name='Sports' OR Cat_Name='CS'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Umer123")
            {
                SqlCommand cm;
                string query = "select * from STUDENT_EXEC inner join eventt on STUDENT_EXEC.Event_Assigned=eventt.Event_Name where Cat_Name='EE'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                SqlCommand cm;
                string query = "select * from STUDENT_EXEC inner join eventt on STUDENT_EXEC.Event_Assigned=eventt.Event_Name where Cat_Name='Social' OR Cat_Name='Business'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 4)
        {
            if (name == "hassan123")
            {

                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID=Textbox1.Text;
                SqlCommand cm;
                string query = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where (eventt.Cat_Name='CS' OR eventt.Cat_Name='Sports') AND Participant_CNIC='"+ID+"'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Umer123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;
                SqlCommand cm;
                string query = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where eventt.Cat_Name='EE' AND Participant_CNIC='"+ID+"'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;
                SqlCommand cm;
                string query = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where (eventt.Cat_Name='Social' OR eventt.Cat_Name='Business') AND Participant_CNIC='" + ID + "'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 5)
        {
            if (name == "hassan123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;
                SqlCommand cm;
                string query = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where (eventt.Cat_Name='CS' OR eventt.Cat_Name='Sports') AND Participant_Name='" + ID + "'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Umer123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where eventt.Cat_Name='EE' AND Participant_Name='" + ID + "'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where (eventt.Cat_Name='Social' OR eventt.Cat_Name='Business') AND Participant_Name='" + ID + "'";
                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 6)
        {
            if (name == "hassan123")
            {

                SqlCommand cm1;

                string query1 = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where (eventt.Cat_Name='Sports' OR eventt.Cat_Name='CS') AND Food_Deal>0";
                cm1 = new SqlCommand(query1, conn);
                SqlDataReader reader1 = cm1.ExecuteReader();
                GridView1.DataSource = reader1;
                GridView1.DataBind();
            }
            else if (name == "Umer123")
            {
                SqlCommand cm;
                string query1 = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where eventt.Cat_Name='EE' AND Food_Deal>0";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                SqlCommand cm;
                string query1 = "select distinct Participant_Name, Participant_CNIC, Participant.Team_Name, Participant_Email, Participant_Phone, Food_Deal from PARTICIPANT inner join TEAM on PARTICIPANT.Team_Name=Team.Team_Name inner join eventt on eventt.Cat_Name=team.Cat_Name where (eventt.Cat_Name='Social' OR eventt.Cat_Name='Business') AND Food_Deal>0";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 7)
        {

            if (name == "hassan123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;


                SqlCommand cm1;

                string query1 = "select * from eventt where Event_Date like('%" + Textbox1.Text + "') AND (Cat_Name='CS' OR Cat_Name='Sports')";
                cm1 = new SqlCommand(query1, conn);
                SqlDataReader reader1 = cm1.ExecuteReader();
                GridView1.DataSource = reader1;
                GridView1.DataBind();
            }
            else if (name == "Umer123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query1 = "select * from eventt where Event_Date like('%" + Textbox1.Text + "') AND Cat_Name='EE'";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query1 = "select * from eventt where Event_Date like('%" + Textbox1.Text + "') AND (Cat_Name='Social' OR Cat_Name='Business')";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 8)
        {

            if (name == "hassan123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;


                SqlCommand cm1;

                string query1 = "select eventt.Event_Name, count(*) AS No_of_Participants from eventt inner join team on team.Event_Name=eventt.Event_Name inner join PARTICIPANT on participant.team_name = team.team_name group by eventt.Event_Name having EVENTT.Event_Name= '" + Textbox1.Text + "'";
                cm1 = new SqlCommand(query1, conn);
                SqlDataReader reader1 = cm1.ExecuteReader();
                GridView1.DataSource = reader1;
                GridView1.DataBind();
            }
            else if (name == "Umer123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query1 = "select eventt.Event_Name, count(*) AS No_of_Participants from eventt inner join team on team.Event_Name=eventt.Event_Name inner join PARTICIPANT on participant.team_name = team.team_name group by eventt.Event_Name having EVENTT.Event_Name= '" + Textbox1.Text + "'";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query1 = "select eventt.Event_Name, count(*) AS No_of_Participants from eventt inner join team on team.Event_Name=eventt.Event_Name inner join PARTICIPANT on participant.team_name = team.team_name group by eventt.Event_Name having EVENTT.Event_Name= '" + Textbox1.Text + "'";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }
        else if (choice == 9)
        {

            if (name == "hassan123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;


                SqlCommand cm1;

                string query1 = "select eventt.Event_Name,faculty_mentor.Emp_Name, Student_Exec.Student_Name from eventt inner join faculty_Mentor on eventt.Mentor_ID = faculty_mentor.EMP_ID inner join student_Exec on student_Exec.Roll_No = eventt.Head_Rollno where eventt.Event_Name = '" + Textbox1.Text + "'";
                cm1 = new SqlCommand(query1, conn);
                SqlDataReader reader1 = cm1.ExecuteReader();
                GridView1.DataSource = reader1;
                GridView1.DataBind();
            }
            else if (name == "Umer123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query1 = "select eventt.Event_Name,faculty_mentor.Emp_Name, Student_Exec.Student_Name from eventt inner join faculty_Mentor on eventt.Mentor_ID = faculty_mentor.EMP_ID inner join student_Exec on student_Exec.Roll_No = eventt.Head_Rollno where eventt.Event_Name = '" + Textbox1.Text + "'";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
            else if (name == "Sana123")
            {
                Textbox1.Visible = true;
                Textbox1.Enabled = true;
                string ID = Textbox1.Text;

                SqlCommand cm;
                string query1 = "select eventt.Event_Name,faculty_mentor.Emp_Name, Student_Exec.Student_Name from eventt inner join faculty_Mentor on eventt.Mentor_ID = faculty_mentor.EMP_ID inner join student_Exec on student_Exec.Roll_No = eventt.Head_Rollno where eventt.Event_Name = '" + Textbox1.Text + "'";
                cm = new SqlCommand(query1, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            }
        }

    }
}