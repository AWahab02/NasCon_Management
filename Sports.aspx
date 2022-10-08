<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sports.aspx.cs" Inherits="Sports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="Sports.css"  />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <title>SPORTS EVENT</title>
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
            <h2>SPORTS</h2>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
             <br />
            <br />
            <br />
            <div class="main_txt">
                
                <h1>INDVIDUAL PARTICIPANT EVENTS</h1>
            </div>

            <!-- CS EVENTS -->
            <div class="row">
                <div class="col">
                    <h3>TABLE TENNIS</h3>
                    <div class="layer">
                        <a href="Individual_Event.aspx?name=TABLE TENNIS&venue=futsal">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>


                <div class="col">
                    <h3>MAZE RUN</h3>
                    <div class="layer">
                        <a href="Individual_Event.aspx?name=MAZE RUN">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>
                
            </div>
           <div class="row_2">
               <h9>TEAM PARTICIPANT EVENTS</h9>
               <div class="col_2">
                   <h3>FUTSAL</h3>
                    <div class="layer_2">
                        <a href="Team_Event.aspx?name=FUTSAL&venue=futsal">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
               </div>

               <div class="col_2">
                   <h3>CRICKET</h3>
                    <div class="layer_2">
                        <a href="Team_Event.aspx?name=CRICKET">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
               </div>

               <div class="col_2">
                   <h3>BASKET BALL</h3>
                    <div class="layer_2">
                        <a href="Team_Event.aspx?name=BASKET BALL">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
               </div>
           </div>
                
           
        </section>
    </form>
</body>
</html>
