<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main_page.aspx.cs" Inherits="main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link rel="stylesheet" href="main.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,500;1,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>NaSCon '22</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <img src="logo.png" />
            <div class="link_on_top" id="nav-links">

                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="#home">HOME</a></li>
                    <li><a href="#about">ABOUT</a></li>
                    <li><a href="#event">EVENTS</a></li>
                    <li><a href="login_option.aspx">LOGIN</a></li>
                    <li><a href="#sponser">SPONSERS</a></li>
                </ul>

            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <section class="header" id="home">
            
               
                
            

            <div class="main_txt">
                <h1>NaSCon'22</h1>
                <p>Nascon's goal is to provide a standardized sequence
                of steps from conceptualization to completion<br /> in order
                to make your project both cost effective and successful.</p>
                <a href="http://www.nascon.net/" class="main_link_btn">Visit us To Know More</a>
            </div>

        </section>


<!-----Events----->
    <a href="#" name="Event"></a>
    <section class="events" id="event">
        
        
        <h1>EVENTS</h1>
        <p>Our events are designed for our youth so that they can participate and flourish in their chosen fields.</p>
        
        <div class="row">
            <div class="col">

                
                <h3>Computer Science</h3>
                <p>
                    Bug Hunt Challenge<br />
                    Cyber Security Quiz<br />
                    Mobile App Development<br />
                    Game Jam<br />
                    SE quiz<br />

                </p>

                <div class="layer">
                    <a href="CS.aspx">
                        <h5>EXPLORE US</h5>
                    </a>
                </div>
            </div>




            <div class="col">
                <h3>Electrical Engineering</h3>
                <p>Speed Writing<br />
                    Aero Wars<br />
                    Robo Race<br />
                    Robo Wars<br />
                    Engineering Gameshow
                </p>
                <div class="layer">
                    <a href="EE.aspx">
                    <h5>EXPLORE US</h5>
                    </a>
                </div>
            </div> 

            <div class="col">
                <h3>Social</h3>
                <p>Auto Show<br />
                    NaSCon got Talent<br />
                    Battle of the bands<br />
                    English poetry<br />
                    Bait Bazi
                </p>
                <div class="layer">
                    <a href="Social.aspx">
                        <h5>EXPLORE US</h5>
                    </a>
                </div>
            </div> 

            <div class="col">
                <h3>Business</h3>
                <p>Entrepreneurial Venture<br />
                    Ad-Maniac<br />
                    Accounting & Finance guru<br />
                    Marketing Plan<br />
                    Business case simulation
                </p>
                <div class="layer">
                    <a href="Business.aspx">
                        <h5>EXPLORE US</h5>
                    </a>
                </div>
            </div> 

            <div class="col">
                <h3>Sports</h3>
                <p>Futsal<br />
                    Basketball<br />
                    Table Tennis<br />
                    Cricket<br />
                    Maze Run
                </p>
                <div class="layer">
                    <a href="Sports.aspx">
                        <h5>EXPLORE US</h5>
                    </a>
                </div>
            </div> 

        </div>


    </section>

    <!-- Sponsers -->
        <section class="sponser" id="sponser">
            <h2>OUR SPONSERS</h2>

            <div class="row">
                <div class="sponser_col">
                    <img src="coke.png" />
                </div>

                <div class="sponser_col">
                    <img src="ebay.png" />
                </div>

                <div class="sponser_col">
                    <img src="tium.png" />
                </div>

                <div class="sponser_col">
                    <img src="jazz.png" />
                </div>

                <div class="sponser_col">
                    <img src="ufone.png" />
                </div>
            </div>
        </section>

        <!--Footer-->
        <section class="footer" id="about">
            <h6>ABOUT US</h6>
            <p>National Solutions Convention is the flagship event of FAST-NU’s annual social calendar.<br /> It is a student-run mega event that has provided the best technological and industrial set of opportunities over the years.<br /> NaSCon welcomes an average of 7000 participants annually, representing institutions from all over Pakistan.</p>
            <h7>A LEGACY OVER 2 DECADES</h7>
            <p>For the past two decades,<br /> NaSCon has enriched the awareness amongst students and professionals alike,<br /> providing a forum for the exchange of ideas,<br /> an environment for the showcase of exceptional professional skill and a platform for innovation.</p>
            <h7>OUR MISSIONS</h7>
            <p>NaSCon is primarily dedicated to bringing together and combining<br /> the mental prowess of students from all over the country, and putting it to good use.<br /> Apart from students, people from different organizations are also invited to attend the event<br /> and contribute to providing solutions for a sustainable future of Pakistan.</p>
            <div class="icons">
                <i class="fa fa-facebook"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-instagram"></i>
                <i class="fa fa-linkedin"></i>
                
            </div>
            <p>@ Copyright NaSCon 2022</p>
        </section>

    </form>

    <script>

        var navlinks = document.getElementById("nav-links");
        function showMenu() {
            navlinks.style.right = "0";
        }

        function hideMenu() {
            navlinks.style.right = "-200px";
        }
        
    </script>
</body>
</html>
