<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_option.aspx.cs" Inherits="login_option" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="login_option.css"  />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <title>LOGIN PAGE</title>
</head>
<body>
    <form id="form1" runat="server">
        <section class="header">
            <div class="main_txt">

                <h1>LOGIN PORTAL</h1>
            </div>


            <div class="row">
                <div class="col">
                    <h3>LOGIN AS ADMIN</h3>
                    <div class="layer">
                        <a href="Admin_Login.aspx">
                            <h5>LOGIN</h5>
                        </a>
                    </div>
                </div>


                <div class="col">
                    <h3>LOGIN AS MENTOR</h3>
                    <div class="layer">
                        <a href="M_login.aspx">
                            <h5>LOGIN</h5>
                        </a>
                    </div>
                </div>

            </div>
        </section>
    </form>
</body>
</html>
