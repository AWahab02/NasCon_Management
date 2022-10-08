<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Team_Event.aspx.cs" Inherits="Team_Event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="Team_Event.css"  />
    <title>Team Event Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
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
            
            <asp:TextBox ID="TextBox1" name=" " placeholder=" " class="reg__form"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox1" class="reg__form1">Team Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
           
            <br />
            <br />
            <asp:TextBox ID="TextBox2" name=" " placeholder=" " class="reg__I" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox2" class="reg__form2">Institute Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
           
            <br />
            <br />
            
            <asp:TextBox ID="TextBox3" class="reg__TLN" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox3" class="reg__form3">Team Lead Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            
            <asp:TextBox ID="TextBox4" class="reg__TLE" name=" " placeholder=" "  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox4" class="reg__form4">Team Lead Email</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox4" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator> 

            <br />

           
            <br />
            <br />
            <asp:TextBox ID="TextBox5" class="reg__TLCNIC" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox5" class="reg__form5">Team Lead CNIC</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="TextBox5" runat="server" ForeColor="Red" ValidationExpression="^[0-9]{5}-[0-9]{7}-[0-9]" Font-Size="XX-Large">( - )</asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox6" class="reg__TLCONTACT" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox6" class="reg__form6">Team Lead Contact-No</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="TextBox6" runat="server" ForeColor="Red" ValidationExpression="^[0][3][\d]{2}[\d]{7}">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox7" class="reg__M2N" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox7" class="reg__form7">Member2 Name</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox8" class="reg__M2E" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox8" class="reg__form8">Member2 Email</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox9" class="reg__M2CNIC" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox9" class="reg__form9">Member2 CNIC</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox10" class="reg__M2CONTACT" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox10" class="reg__form10">Member2 Contact-No</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox11" class="reg__M3N" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox11" class="reg__form11">Member3 Name</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox12" class="reg__M3E" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox12" class="reg__form12">Member3 Email</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox13" class="reg__M3CNIC" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox13" class="reg__form13">Member3 CNIC</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox14" class="reg__M3CONTACT" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox14" class="reg__form14">Member3 Contact-No</label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox15" name=" " placeholder=" " class="reg__MN"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox15" class="reg__form15">No of Members</label>
            <br />
           
            <br />
            <br />
            <asp:TextBox ID="TextBox16" name=" " placeholder=" " class="reg__H"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox16" class="reg__form16">Head Food Deal No</label>
            <br />
           
            <br />
            <br />
            <asp:TextBox ID="TextBox17" name=" " placeholder=" " class="reg__1"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox17" class="reg__form17">Member2 Food Deal No</label>
            <br />
           
            <br />
            <br />
            <asp:TextBox ID="TextBox18" name=" " placeholder=" " class="reg__2"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox18" class="reg__form18">Member3 Food Deal No</label>
            <br />
           
            <br />
            <br />
            
            
            <asp:Button ID="Btn" class="Hash" Text="Register" runat="server" CssClass="Hash" OnClick="Btn_Click" /> 
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
