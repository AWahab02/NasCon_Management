<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_option.aspx.cs" Inherits="add_option" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="add_option.css"  />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <title>ADMIN PORTAL</title>
    
</head>
<body>
    <form id="form1" runat="server">
        
         <section class="header">
             <div class="link_on_top" id="nav-links">
                <ul>
                    <li><a href="main_page.aspx">LOGOUT</a></li>
                </ul>

            </div>
      
            <div class="main_txt">

                <h1>DELETE PAGE</h1>
            </div>


            <div class="row">
                <div class="col">
                    
                    <a href="delete_event.aspx">
                        <h3>EVENT</h3>
                    </a>
                    
                </div>


                <div class="col">
                    
                    
                        <a href="delete_admin.aspx">
                            <h3>ADMIN</h3>
                        </a>
                    
                </div>

                <div class="col">
                    
                    
                        <a href="delete_team.aspx">
                            <h3>TEAM</h3>
                        </a>
                    
                </div>

                <div class="col">
                    
                    
                        <a href="delete_mentor.aspx">
                            <h3>FACULTY MENTOR</h3>
                        </a>
                    
                </div>

                <div class="col">
                    
                    
                        <a href="delete_sponser.aspx">
                            <h3>SPONSER</h3>
                        </a>
                    
                </div>

            </div>
        </section>
    </form>
</body>
</html>
