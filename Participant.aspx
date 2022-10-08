<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Participant.aspx.cs" Inherits="Participant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="P_reg.css"  />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <title>MENTOR PORTAL</title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div class="link_on_top" id="nav-links">
                <ul>
                    <li><a href="main_page.aspx">LOGOUT</a></li>
                     <li><a href="M_Reports.aspx">REPORTS</a></li>
                </ul>

            </div>
        <div>
            <header>EVENT MODIFICATION FORM</header>
        </div>

        <div class="reg">
            
            <asp:TextBox ID="TextBox1" name=" " placeholder=" " class="reg__form"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox1" class="reg__form1">Event Name</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
           
            <br />
            <br />
            <asp:TextBox ID="TextBox2" name=" " placeholder=" " class="reg__I" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox2" class="reg__form2">Event Time</label>
            <br />
           
            <br />
            <br />
            
            <asp:TextBox ID="TextBox3" class="reg__E" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox3" class="reg__form3">Event Venue</label>

            <br />
            <br />
            <br />
            
           <asp:Button ID="Btn" class="Hash" Text="Register" runat="server" CssClass="Hash" OnClick="Btn_Click" /> 

                
            <div id="background-wrap">
            <div class="bubble x1"></div>
            <div class="bubble x2"></div>
            <div class="bubble x3"></div>
            <div class="bubble x4"></div>
            <div class="bubble x5"></div>
            <div class="bubble x6"></div>
            <div class="bubble x7"></div>
            <div class="bubble x8"></div>
            <div class="bubble x9"></div>
            <div class="bubble x10"></div>
</div>
            
        </div>

        
    </form>
    
  

</body>
</html>
