using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        int choice = DropDownList1.SelectedIndex;

        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        
        Textbox1.Visible = false;
        Textbox1.Enabled = false;
        Textbox2.Visible = false;
        Textbox2.Enabled = false;


        if (choice==1)
        {
            SqlCommand cm;
            string query = "select Participant_CNIC, Participant_Name, team.Team_Name, Participant_Phone, Participant_Email, Food_Deal, Institute_Name, Head_Name, Event_Name, Cat_Name from Participant inner join team on participant.team_name = team.team_name";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();



        }

        else if (choice==2)
        {
            SqlCommand cm;
            string query = "select Cat_Name, sum(Cast(amount AS INT)) AS Amount_Collected from sponsor inner join Packages on sponsor.Package = Packages.Package_Type inner join Category on Sponsor.Company_Name = Category.Sponsor_Company group by Cat_Name";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();

        }

        else if (choice == 3)
        {
            Textbox1.Visible = true;
            Textbox1.Enabled = true;

            SqlCommand cm;
            string query = "select * from eventt where eventt.Cat_Name = '"+Textbox1.Text+"'";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            

            reader.Close();
            
        }

        else if (choice == 4)
        {

            

            SqlCommand cm;
            

 
                string query = "select * from faculty_Mentor";

                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                reader.Close();

            






        }

        else if (choice == 5)
        {

            Textbox1.Visible = true;
            Textbox1.Enabled = true;

            SqlCommand cm;

            string query = "select * from faculty_Mentor inner join eventt on faculty_Mentor.EMP_ID = Eventt.Mentor_ID where cat_name = '" + Textbox1.Text + "'";

                cm = new SqlCommand(query, conn);

                SqlDataReader reader = cm.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                reader.Close();

        }

        else if (choice == 6)
        {
            SqlCommand cm;
            string query = "select * from student_exec";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();
        }

        else if (choice == 6)
        {
            SqlCommand cm;
            string query = "select * from student_exec";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();
        }

        else if (choice == 7)
        {
            Textbox1.Visible = true;
            Textbox1.Enabled = true;

            SqlCommand cm;
            string query = "select* from student_exec inner join EVENTT on eventt.Event_Name = student_exec.Event_Assigned where Event_Assigned = '"+Textbox1.Text+"'";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();
        }

        else if (choice == 8)
        {
            Textbox1.Visible = true;
            Textbox1.Enabled = true;

            SqlCommand cm;
            string query = "select * from student_exec inner join category on category.Secratery_Rollno = student_exec.Roll_no where Cat_name = '"+Textbox1.Text+"'";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();
        }

        else if (choice == 9)
        {
            Textbox1.Visible = true;
            Textbox1.Enabled = true;

            SqlCommand cm;
            string query = "select * from student_exec inner join category on category.Secratery_Rollno = student_exec.Roll_no where Cat_name = '" + Textbox1.Text + "'";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();
        }




        else if (choice == 10)
        {
            SqlCommand cm;
            string query = "select * from sponsor";
            cm = new SqlCommand(query, conn);

            SqlDataReader reader = cm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();

        }

        else if (choice == 11)
        {

            Textbox1.Visible = true;
            Textbox1.Enabled = true;
            SqlCommand cm;



                string query = "select * from Participant where Participant_CNIC = '" + Textbox1.Text + "' ";
                cm = new SqlCommand(query, conn);
                SqlDataReader reader = cm.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();

                reader.Close();
            

                

            

        }

        else if (choice == 12)
        {

            Textbox1.Visible = true;
            Textbox1.Enabled = true;
            SqlCommand cm1;

            string query1 = "select * from Participant where Participant_Name = '" + Textbox1.Text + "' ";
            cm1 = new SqlCommand(query1, conn);
            SqlDataReader reader1 = cm1.ExecuteReader();
            GridView1.DataSource = reader1;
            GridView1.DataBind();
        }

        else if (choice == 13)
        {
            
                SqlCommand cm1;

            string query1 = "select* from PARTICIPANT where participant.Food_Deal > 0";
            cm1 = new SqlCommand(query1, conn);
            SqlDataReader reader1 = cm1.ExecuteReader();
            GridView1.DataSource = reader1;
            GridView1.DataBind();
        }

        else if (choice == 14)
        {
            Textbox1.Visible = true;
            Textbox1.Enabled = true;
            SqlCommand cm1;

            string query1 = "select * from eventt where Event_Date like('%"+ Textbox1.Text +"')";
            cm1 = new SqlCommand(query1, conn);
            SqlDataReader reader1 = cm1.ExecuteReader();
            GridView1.DataSource = reader1;
            GridView1.DataBind();
        }

        else if (choice == 15)
        {
            Textbox1.Visible = true;
            Textbox1.Enabled = true;
            SqlCommand cm1;

            string query1 = "select eventt.Event_Name, count(*) AS No_of_Participants from eventt inner join team on team.Event_Name=eventt.Event_Name inner join PARTICIPANT on participant.team_name = team.team_name group by eventt.Event_Name having EVENTT.Event_Name= '"+Textbox1.Text+"'";
            cm1 = new SqlCommand(query1, conn);
            SqlDataReader reader1 = cm1.ExecuteReader();
            GridView1.DataSource = reader1;
            GridView1.DataBind();
        }

        else if (choice == 16)
        {
            Textbox1.Visible = true;
            Textbox1.Enabled = true;
            SqlCommand cm1;

            string query1 = "select eventt.Event_Name,faculty_mentor.Emp_Name, Student_Exec.Student_Name from eventt inner join faculty_Mentor on eventt.Mentor_ID = faculty_mentor.EMP_ID inner join student_Exec on student_Exec.Roll_No = eventt.Head_Rollno where eventt.Event_Name = '"+Textbox1.Text+"'";
            cm1 = new SqlCommand(query1, conn);
            SqlDataReader reader1 = cm1.ExecuteReader();
            GridView1.DataSource = reader1;
            GridView1.DataBind();
        }

        else if (choice == 17)
        {
            SqlCommand cm1;

            string query1= "SELECT event_time, action_id, statement, database_name, server_principal_name FROM fn_get_audit_file( 'C:\\Games\\Audit_CEE7D7EB-7023-4115-9A54-C42613244A11_0_132990204687160000.sqlaudit' , DEFAULT , DEFAULT)";
            cm1 = new SqlCommand(query1, conn);
            SqlDataReader reader1 = cm1.ExecuteReader();
            GridView1.DataSource = reader1;
            GridView1.DataBind();
        }





    }
}