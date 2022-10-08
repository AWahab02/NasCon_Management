using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class modify_event : System.Web.UI.Page
{
    bool check = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;

        string Event_Name = TextBox1.Text;
        string New_Cat = TextBox2.Text;
        string New_Mentor = TextBox3.Text;
        string Sec_Roll_No = TextBox4.Text;
        string Head_Roll_No = TextBox5.Text;
        string venue = TextBox6.Text;
        string new_reg_price = TextBox7.Text;
        string min = TextBox8.Text;
        string max = TextBox9.Text;
        string date = TextBox10.Text;
        string time = TextBox11.Text;

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
                check = true;
            }
            else
            {
                Label1.Text = ("Event Name not found");

            }
        }
        conn.Close();



        conn.Open();

        if (check == true)
        {

            string query = "Update Eventt Set Cat_Name = '" + New_Cat + "', Mentor_Id = '" + New_Mentor + "', Secratery_Rollno = '" + Sec_Roll_No + "', Head_Rollno = '" + Head_Roll_No + "', Venue = '" + venue + "', Reg_Price = '" + new_reg_price + "', Min_Entries = '" + min + "', Max_Entries = '" + max + "', Event_Date = '" + date + "', Event_Time = '" + time + "' where Event_Name = '" + Event_Name + "' ";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            Server.Transfer("Admin_Portal.aspx");

            conn.Close();
        }
    }
}