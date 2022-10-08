<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modify_team.aspx.cs" Inherits="modify_team" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="modify_team.css" />
    <title>MODIFY TEAM</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>MODIFY TEAM</header>
        </div>

        <div class="reg">
            
            <asp:TextBox ID="TextBox1" name=" " placeholder=" " class="reg__form"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox1" class="reg__form1">Enter Team Name you want to update</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
           
            <br />
            <br />
            <asp:TextBox ID="TextBox2" name=" " placeholder=" " class="reg__I" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox2" class="reg__form2">Enter new Insititute Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
           
            <br />
            <br />
            
            <asp:TextBox ID="TextBox3" class="reg__TLN" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox3" class="reg__form3">Enter new Head Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            
            <asp:TextBox ID="TextBox4" class="reg__TLE" name=" " placeholder=" "  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox4" class="reg__form4">Enter new Head Email</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox4" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator> 

            <br />

           
            <br />
            <br />
            <asp:TextBox ID="TextBox5" class="reg__TLCNIC" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox5" class="reg__form5">Enter new Head CNIC</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="TextBox5" runat="server" ForeColor="Red" ValidationExpression="^[0-9]{5}-[0-9]{7}-[0-9]" Font-Size="XX-Large">( - )</asp:RegularExpressionValidator>

            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox6" class="reg__TLCONTACT" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox6" class="reg__form6">Enter new Head Contact No</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="TextBox6" runat="server" ForeColor="Red" ValidationExpression="^[0][3][\d]{2}[\d]{7}">*</asp:RegularExpressionValidator>
            
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox7" class="reg__M2N" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox7" class="reg__form7">Enter new No of Members</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            
            
            
            <asp:Button ID="Btn" class="Hash" Text="UPDATE" runat="server" CssClass="Hash" OnClick="Btn_Click" /> 
            <!-- Bubbles animation -->
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
