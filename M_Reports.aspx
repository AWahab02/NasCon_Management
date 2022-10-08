<%@ Page Language="C#" AutoEventWireup="true" CodeFile="M_Reports.aspx.cs" Inherits="M_Reports"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link rel="stylesheet" href="M_Reports.css"  />

    <title>MENTOR REPORTS</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="link_on_top" id="nav-links">
                <ul>
                    <li><a href="Participant.aspx">TO PORTAL</a></li>
                </ul>

            </div>
            <header>Mentor Report</header>

        <div class ="col">
            <br /><br /><br /><br /><br />
            <asp:DropDownList class="newclass" ID="DropDownList1" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>List of all the registered participants and their information</asp:ListItem>
                <asp:ListItem>List of the events and their information in your assigned categories</asp:ListItem>
                <asp:ListItem>List of all Student Executives in your assigned categories</asp:ListItem>
                <asp:ListItem>Search specific participant by unique ID</asp:ListItem>
                <asp:ListItem>Search specific participant by Name</asp:ListItem>
                <asp:ListItem>List of those participants who have registered for food deal</asp:ListItem>
                <asp:ListItem>List of events to be held on specific date</asp:ListItem>
                <asp:ListItem>Total number of registrations in a specific event.</asp:ListItem>
                <asp:ListItem>Name of faculty mentor, event head, and details of a specific event.</asp:ListItem>

            </asp:DropDownList>

            
            <asp:Textbox ID ="Textbox1" runat="server" class="newclass" Visible="false" Enabled ="false" required="true"></asp:Textbox>
            <asp:Textbox ID ="Textbox2" runat="server" class="newclass" Visible="false" Enabled ="false" required="true"></asp:Textbox>

        </div>
        <div style ="text-align:center">
                               <asp:Button ID="Btn" class="Hash" Text="Execute" runat="server" CssClass="Hash" OnClick="Btn_Click" /> 
        </div>

        <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
    </form>
</body>
</html>
