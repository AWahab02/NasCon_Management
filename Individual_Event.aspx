<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Individual_Event.aspx.cs" Inherits="Individual_Event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Individual_Event.css" />
    <title>Individual Event Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <header>EVENT REGISTRATION</header>
        </div>

        <div class="line">
        </div>

        <div class="left">
            <br />
            <br />
            <p><strong>EVENT NAME</strong></p>
             <div class="read"><p><%=eventname%></p></div>
            <p>&nbsp;</p>
            <p><strong>CATEGORY NAME</strong></p>
            <div class="read"><p><%=catname%></p></div>
            <p>&nbsp;</p>
            <p><strong>VENUE</strong></p>
            <div class="read"><p><%=var1%></p></div>
            <p>&nbsp;</p>
            <p><strong>REGISTRATION PRICE</strong></p>
            <div class="read"><p><%=var2%></p></div>
            <p>&nbsp;</p>
            <p><strong>MINIMUM ENTRIES</strong></p>
            <div class="read"><p><%=var3%></p></div>
            <p>&nbsp;</p>
            <p><strong>MAXIMUM ENTREIS</strong></p>
            <div class="read"><p><%=var4%></p></div>
            <p>&nbsp;</p>
            <p><b><strong>EVENT DATE</strong></b></p>
            <div class="read"><p><%=var5%></p></div>
            <p>&nbsp;</p>
            <p><b><strong>EVENT TIME</strong></b></p>
            <div class="read"><p><%=var6%></p></div>
        </div>

        <div class="reg">
            

            <asp:TextBox ID="TextBox1" name=" " placeholder=" " class="reg__form" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <label for="TextBox1" class="reg__form1">Name</label>
            <br />

            <br />
            <br />
            <asp:TextBox ID="TextBox2" name=" " placeholder=" " class="reg__I" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Institute Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>

            <label for="TextBox2" class="reg__form2">Institute Name</label>
            <br />

            <br />
            <br />

            <asp:TextBox ID="TextBox3" class="reg__E" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox3" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <label for="TextBox3" class="reg__form3">Email</label>
            <br />
            <br />
            <br />

            <asp:TextBox ID="TextBox4" class="reg__CNIC" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox4" class="reg__form4">CNIC</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox4" runat="server" ForeColor="Red" ValidationExpression="^[0-9]{5}-[0-9]{7}-[0-9]" Font-Size="XX-Large">( - )</asp:RegularExpressionValidator>
            <br />

            <br />
            <br />
            <asp:TextBox ID="TextBox5" class="reg__Contact" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox5" class="reg__form5">Contact-No</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="TextBox5" runat="server" ForeColor="Red" ValidationExpression="^[0][3][\d]{2}[\d]{7}">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox6" name=" " placeholder=" " class="reg__TN" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <label for="TextBox6" class="reg__form6">Team Name</label>
            <br />

            <br />
            <br />
            <asp:TextBox ID="TextBox7" name=" " placeholder=" " class="reg__M2N" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox7" class="reg__form7">Food Deal No</label>
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
