<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="Report.css"  />
    <title>REPORT</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="link_on_top" id="nav-links">
                <ul>
                    <li><a href="Admin_Portal.aspx">BACK TO PORTAL</a></li>
                </ul>

            </div>
            <header>REPORT</header>

        <div class ="col">
            <br /><br /><br /><br /><br />
            <asp:DropDownList ID="DropDownList1" class="newclass" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>List of all the registered participants and their information</asp:ListItem>
                <asp:ListItem>Total amount collected by sponsors for each category</asp:ListItem>
                <asp:ListItem>List of the events and their information in specific category</asp:ListItem>
                <asp:ListItem>List of all Faculty Mentors</asp:ListItem>
                <asp:ListItem>List of Faculty Mentor of specific category</asp:ListItem>
                <asp:ListItem>List of all Student Executives</asp:ListItem>
                <asp:ListItem>List of all Student Executives by Event</asp:ListItem>
                <asp:ListItem>List of all Student Executives by Category</asp:ListItem>
                <asp:ListItem>List of all Student Executives by Managing_Dept</asp:ListItem>
                <asp:ListItem>List of sponsors and their information</asp:ListItem>
                <asp:ListItem>Search specific participant by unique ID</asp:ListItem>
                <asp:ListItem>Search specific participant by Name</asp:ListItem>
                <asp:ListItem>List of those participants who have registered for food deal</asp:ListItem>
                <asp:ListItem>List of events to be held on specific date</asp:ListItem>
                <asp:ListItem>Total number of registrations in a specific event.</asp:ListItem>
                <asp:ListItem>Name of faculty mentor, event head, and details of a specific event.</asp:ListItem>
                <asp:ListItem>View Audit Log</asp:ListItem>


            </asp:DropDownList>

            <asp:Textbox ID ="Textbox1" runat="server" class="newclass" Visible="false" Enabled ="false" required="true"></asp:Textbox>
            <asp:Textbox ID ="Textbox2" runat="server" class="newclass" Visible="false" Enabled ="false" required="true"></asp:Textbox>

        </div>

        <div style ="text-align:center">
                               <asp:Button ID="Btn" class="Hash" Text="Execute" runat="server" CssClass="Hash" OnClick="Btn_Click" /> 
        </div>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>

    </form>
</body>
</html>
