<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EE.aspx.cs" Inherits="EE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="EE.css"  />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <title>ELECTRICAL ENGINEERING EVENTS</title>
</head>
<body>
    <form id="form1" runat="server">
         <section class="header">
             <nav>
                <div class="link_on_top" id="nav-links">          
                    <ul>
                        <li><a href="main_page.aspx">HOME</a></li>
                        <li><a href="main_page.aspx#Event">EVENTS</a></li>
                    </ul>                  
                </div>              
            </nav>
            <h2>ELECTRICAL ENGINEERING</h2>
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="main_txt">
                
                <h1>TEAM PARTICIPANT EVENTS</h1>
            </div>

            <!-- EE EVENTS -->
            <div class="row">
                <div class="col">
                    <h3>SPEED WRITING</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=SPEED WRITING">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>


                <div class="col">
                    <h3>AERO WARS</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=AERO WARS">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>ROBO RACE</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=ROBO RACE">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>ROBO WARS</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=ROBO WARS">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>ENGINEERING GAMESHOW</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=ENGINEERING GAMESHOW">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>
            </div>

        </section>
    </form>
</body>
</html>
