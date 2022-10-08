<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Business.aspx.cs" Inherits="Business" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="Business.css"  />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <title>BUSINESS EVENTS</title>
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
            <h2>BUSINESS</h2>
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
                    <h3>Entrepreneurial Venture</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=Entrepreneurial Venture">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>


                <div class="col">
                    <h3>Ad-Maniac</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=Ad-Maniac">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>Accounting & Finance guru</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=Accounting and Finance guru">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>Marketing Plan</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=Marketing Plan">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>

                <div class="col">
                    <h3>Business case simulation</h3>
                    <div class="layer">
                        <a href="Team_Event.aspx?name=Business case simulation">
                            <h5>REGISTER NOW</h5>
                        </a>
                    </div>
                </div>
            </div>

        </section>
    </form>
</body>
</html>
