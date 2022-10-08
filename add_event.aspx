<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_event.aspx.cs" Inherits="add_event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="add_event.css"  />
    <title>ADD EVENT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>ADD EVENT</header>
        </div>

        <div class="reg">
            
            <asp:TextBox ID="TextBox1" name=" " placeholder=" " class="reg__form"  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox1" class="reg__form1">Event Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
           
            <br />
            <br />
            <asp:TextBox ID="TextBox2" name=" " placeholder=" " class="reg__I" runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox2" class="reg__form2">Category Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
           
            <br />
            <br />
            
            <asp:TextBox ID="TextBox3" class="reg__TLN" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox3" class="reg__form3">Mentor ID</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            
            <asp:TextBox ID="TextBox4" class="reg__TLE" name=" " placeholder=" "  runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox4" class="reg__form4">Secretary Roll No</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>

            <br />

           
            <br />
            <br />
            <asp:TextBox ID="TextBox5" class="reg__TLCNIC" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox5" class="reg__form5">Head Roll No</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox6" class="reg__TLCONTACT" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox6" class="reg__form6">Venue</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox7" class="reg__M2N" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox7" class="reg__form7">Registration Price</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox8" class="reg__M2E" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox8" class="reg__form8">Minimum Entries</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox9" class="reg__M2CNIC" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox9" class="reg__form9">Maximum Entries</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox10" class="reg__M2CONTACT" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox10" class="reg__form10">Event Date</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox11" class="reg__M3N" name=" " placeholder=" " runat="server" Width="689px" Height="37px"></asp:TextBox>
            <label for="TextBox11" class="reg__form11">Event Time</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="Name is mandatory" ForeColor="Red" SetFocusOnError="True" InitialValue=" " ClientIDMode="AutoID" Font-Size="XX-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <div class="label_1">
                 <asp:Label ID="Label1" runat="server" CssClass="label_1" ></asp:Label>
            </div>
            <br />
            <br />
            
            
            <asp:Button ID="Btn" class="Hash" Text="Add event" runat="server" CssClass="Hash" OnClick="Btn_Click" /> 
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
