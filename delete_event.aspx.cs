﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class delete_event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Click(object sender, EventArgs e)
    {
        SqlCommand cm;

        string Event_Name = TextBox1.Text;



        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DNNCGPVF\\SQLEXPRESS;Initial Catalog=Proj;Integrated Security=True");
        conn.Open();

        string query = "Delete from EVENTT where Event_Name = '" + Event_Name + "'";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();

        Server.Transfer("Admin_Portal.aspx");

        conn.Close();
    }
}