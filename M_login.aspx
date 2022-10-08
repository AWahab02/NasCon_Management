<%@ Page Language="C#" AutoEventWireup="true" CodeFile="M_login.aspx.cs" Inherits="M_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="M_Login.css"  />
    <title>Admin Login</title>
</head>
<body>
    <div class="background-image"></div>
    <form id="form1" runat="server">
        
        <h2 data-text="LOGIN">LOGIN</h2>
        <h3 >MENTOR</h3>

        <div class="make-box">
         <div class="log">
          <asp:TextBox ID="TextBox1" name=" " placeholder=" " class="reg__User"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox1" class="reg__form1">User Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" font-size="XX-Large" Text="*" />
             <br />
             <br />
             <br />
             <asp:TextBox ID="TextBox2" type="password" name=" " placeholder=" " class="reg__P" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox2" class="reg__form2">Password</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" font-size="XX-Large" Text="*" />
             <br />
             <br />
             <div class="label_1">
                 <asp:Label ID="Label1" runat="server" CssClass="label_1" ></asp:Label>
             </div>
             
             <asp:Button ID="Btn" class="Hash" Text="Register" runat="server" CssClass="Hash" OnClick="Btn_Click" />
            
            </div>
         </div>

    </form>

     

</body>
    

</html>

