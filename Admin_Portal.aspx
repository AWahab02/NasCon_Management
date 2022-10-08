<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Portal.aspx.cs" Inherits="Admin_Portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Admin_portal.css"  />
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

                <h1>ADMIN PORTAL</h1>
            </div>


            <div class="row">
                <div class="col">
                    
                    <a href="add_option.aspx">
                        <h3>ADD</h3>
                    </a>
                    
                </div>


                <div class="col">
                    
                    
                        <a href="modify_option.aspx">
                            <h3>UPDATE</h3>
                        </a>
                    
                </div>

                <div class="col">
                    
                    
                        <a href="delete_option.aspx">
                            <h3>DELETE</h3>
                        </a>
                    
                </div>

                <div class="col">
                    
                    
                        <a href="Report.aspx">
                            <h3>REPORTS</h3>
                        </a>
                    
                </div>

            </div>
        </section>
    </form>
</body>
</html>
