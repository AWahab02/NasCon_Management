<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="CS.css"  />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <title>Computer Science Events</title>
</head>
<body>
    <form id="form1" runat="server">
        <section class="header">
             <nav>
                <div class="link_on_top" id="nav-links">          
                    <ul>
                        <li><a href="main_page.aspx">HOME</a></li>
                        <li><a href="main_page.aspx#Event">EVENTS</a>
                            <div class="sub-menu">
                                <ul>
                                    
                                    <li><a href="#">Electricl Engeneering</a></li>
                                    <li><a href="#">Social</a></li>
                                    <li><a href="#">Business</a></li>
                                    <li><a href="#">Sports</a></li>
                                    
                                </ul>
                            </div>
                        </li>
                    </ul>                  
                </div>              
            </nav>
            <h2>COMPUTER SCIENCE</h2>
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="main_txt">
                
                <h1>TEAM PARTICIPANT EVENTS</h1>
            </div>

            <!-- CS EVENTS -->
            <div class="row">
                <div class="col">
                    <h3>BUG HUNT CHALLENGE</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=BUG HUNT CHALLENGE">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>


                <div class="col">
                    <h3>CYBER SECURITY QUIZ</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=CYBER SECURITY QUIZ">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>MOBILE APP DEVELOPMENT</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=MOBILE APP DEVELOPMENT">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>GAME JAM</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=GAME JAM">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>SE QUIZ</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=SE QUIZ">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>
            </div>

        </section>
        
    </form>
</body>
</html>
