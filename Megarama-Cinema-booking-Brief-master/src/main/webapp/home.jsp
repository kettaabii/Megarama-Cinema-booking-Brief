
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>


    <title>page home </title>
    
    <style><%@include file="Movie.css"%></style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free singlepage web template created by GraphBerry">
    <meta name="keywords" content="HTML5, Bootstrap 3, CSS3, javascript, PHP, Responsive, Mobile">
    <meta name="author" content="GraphBerry.com"/>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- Load css styles -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/pluton.css" />
        <!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="css/pluton-ie7.css" />
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="css/jquery.cslider.css" />
        <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" />
        <link rel="stylesheet" type="text/css" href="css/animate.css" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/apple-touch-icon-72.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57.png">
        <link rel="shortcut icon" href="images/ico/favicon.ico">
</head>
<body>
<!-- Navbar -->
<nav class="navbar nav-movie bg-dark fixed-top navbar-expand-lg py-0" style="height: 70px;">
    <div class="container">
        <img class="navbar-brand me-auto" style="width: 130px;" src="https://i.ibb.co/vVjW8k7/megarama-logo.png">
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
             aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">WELCOME TO YOUR CINEMA</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
                    <li class="nav-item active-menu">
                        <a class="nav-link text-light mx-lg-2 mx-4" href="#slider"> Films de cinéma </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light mx-lg-2 mx-4" href="#slider1">Diffusion en direct</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light mx-lg-2 mx-4" href="#about">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light mx-lg-2 mx-4" href="#service">Our Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light mx-lg-2 mx-4" href="#contact">Contact Us</a>
                    </li>
                      
                </ul>
            </div>

        </div>
       <div class="search">
            <form action="MovieServletsearch" method="get">
        <input type="text" id="title" name="title">
      <!--   <button type="submit" height="10px">Search</button> --> 
    </form>
        </div>
       
         <i class='bx bx-user bx-flip-horizontal icon rounded' style='color:white'></i>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
      <li class="nav-item">
                        
                        <a class="nav-link text-light mx-lg-2 mx-4" href="login.jsp"><img src="img/logout.png" alt="logout" with="10px" height="10PX">Login</a>
                    </li>
</nav>
<div id="slider">
    <figure>
        <c:forEach var="film" items="${filmlist}">
        <div class="image"><img style="width: 100%; height: 100vh;" src="${film.getMegaCover()}" alt="">
            <div class="example"  >
                <div class="description" style="display: flex;margin: 10px;">
                <img src="${film.getCover()}" class="backimg"/>
                <div style="margin:15px;">
                <h6 style="color: white;">${film.getTitle()}</h6>
                    <h6>desc</h6>
                    <h6>${film.getDescription()}</h6>
                </div>
            </div>


            </div>


        </div>



        </c:forEach>

    </figure>
   </div  >

  <div id="slider1">  </div> 
  <br>
  <br>
<h2 style="color: white; margin: 1rem;">Streaming Now :</h2>


<br>
   <div class="grid-wrapper" style="display: flex;flex-wrap: wrap;">
    <c:forEach var="film" items="${filmlist}">
    <!-- Card -->
    <div class="card-container box">
        <div class="card-flip">
            <!-- Card Front -->
            <div class="card front">
                <img src="${film.getCover()}" class="card-img-top img-fluid" alt="movie-poster">
                <div class="card-block">
                    <h5 class="card-title">${film.getTitle()}</h5>
                    <p class="card-text">${film.getGenre()}</p>
                    <p class="card-text"><small class="text-muted">${film.getDuration()} min </small></p>
                </div>
            </div>
            <!-- End Card Front -->

            <!-- Card Back -->
            <div class="card back">
                <div class="card-header warning-color"></div>
                <div class="card-block text-center">
                    <p class="card-text"><a href="#" class="rating">${film.getGenre()}</a></p>
                    <p class="card-text">${film.getDescription()}</p>
                    <p class="card-text">${film.getDirector()}</p>
                    <p class="card-text">${film.getReleaseDate()}</p>
                    <a  type="submit" href="BookMovie?id=${film.getFilmId()}" >Book Now</a>
                </div>
                <img class="movie" src="${film.getMegaCover()}" alt="back-img">
            </div>
            <!-- End Card Back -->
        </div>
    </div>
    <!-- End Card -->
    </c:forEach>
</div>

<section id="about" class="no-padding">
 
    <div class="container">
    
        <div class="row">
            <div class="col-md-6 section-text">
                <div class="title title-left">
                <h1>About Us</h1>
                    <h2>Our beginning</h2>
                    <h6>Closer to the star</h6>
                    <div class="divider divider-sm"></div>
                </div>
                <p>Les sites de cinéma en ligne ont révolutionné la manière dont nous consommons et découvrons les films,</p>
              <p>   en offrant un voyage cinématographique pratique, immersif et personnalisé aux spectateurs du monde entier.</p>
              <p>   Que vous souhaitiez vous tenir au courant des dernières sorties, explorer des classiques intemporels ou vous plonger dans des genres cinématographiques spécialisés,</p>
              <p>   un site de cinéma en ligne est votre billet d'entrée dans un monde de plaisir cinématographique.</P>
               
                <p>I like jumping back and forth between a few different things to let my subconscious chew on one problem while my conscious works on something else.</p>
       
          
                <h3>Who We Are</h3>
                <p>I like jumping back and forth between a few different things to let my subconscious chew on one problem while my conscious works on something else.</p>
          
                <h3>Why We Do This</h3>
                <p>I like jumping back and forth between a few different things to let my subconscious chew on one problem while my conscious works on something else.</p>
         

                <p>Bienvenue sur notre site</p>
                <a href="#teams" class="btn btn-primary">See portfolio</a>
            </div>
            <div class="col-md-6">
                <img src="img/aboutimg.jpg" class="img-responsive">
            </div>
          
        </div>
    </div>
      <BR>
    <div class="video">
        <div class="video-wrapper">
            <div class="centred-container">
                <h3>See our video</h3>
                <a href="https://pin.it/PfIvRcZFm" id="popup-youtube" ><i class="fa fa-play-circle"></i></a>
            </div>
        </div>
    </div>
</section>

<section id="about">
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="title" id="teams">
                    <h2>About us</h2>
                    <span>Who we are</span>
                    <div class="divider divider-lg"></div>
                    <p>The way a team plays as a whole determines its success. You may have the greatest bunch of individual stars in the world, but if they don’t play together, the club won’t be worth a dime.</p>
                </div>
            </div>
        </div>
        <div class="row team">
            <div class="col-md-3 col-sm-6">
                <div class="team-member">
                    <img src="img/team/img3.jpg" class="img-responsive">
                    <h6>banid_zakaria</h6>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="team-member">
                  <img src="img/team/img3.jpg" class="img-responsive">
                    <h6>med_kettabi</h6>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="team-member">
                   <img src="img/team/img2.jpg" class="img-responsive">
                    <h6>ouadi_hajar</h6>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="team-member">
                   <img src="img/team/img3.jpg" class="img-responsive">
                    <h6>saidtalfana</h6>
                </div>
            </div>
        </div>
      
    </div>
   
</section>
 <div class="section primary-section" id="service">
            <div class="container">
                <!-- Start title section -->
                <div class="title">
                    <h1>Our Services</h1>
                    <!-- Section's title goes here -->
                    <p>Bienvenue sur notre site</p>
                    <!--Simple description for section goes here. -->
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="https://i.pinimg.com/564x/92/7d/12/927d124a6be0fc662bc47b9d378d05e4.jpg" alt="service 1">
                            </div>
                            <h3>Vaste collection de films </h3>
                            <p>We Create Modern And Clean Theme For Your Business Company.</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="https://i.pinimg.com/564x/ae/da/33/aeda33fbfd1fa8e0c78001bc92627799.jpg" alt="service 2" />
                            </div>
                            <h3>Interface conviviale</h3>
                            <p>We Create Modern And Powerful Theme With Lots Animation And Features</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="https://i.pinimg.com/564x/35/10/67/35106769844f1aa2b965d07e4ef46228.jpg" alt="service 3">
                            </div>
                            <h3>Recommandations personnalisées</h3>
                            <p>We Create Modern And Powerful Html5 And CSS3 Code Easy For Read And Customize.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  <div class="w3-container w3-padding-64" id="contact">
 <section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="title text-center">
                    <h2>Contact Us</h2>
                    <h6>We love talking</h6>
                    <div class="divider divider-lg"></div>
                    <p>If the reader notices the interior page design of a book – even if he or she likes what they see – I’ve missed, because I distracted them from their reading.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <address class="col-md-4">
             <i class="fa fa-envelope"></i>
             <span>somemail@sample.com</span>
         </address>
         <address class="col-md-4">
            <span>
                <i class="fa fa-home"></i>
                T123 Timbal Oak Drive<br>
                Sundown, TX 12345
            </span>
        </address>
        <address class="col-md-4" >
            <i class="fa fa-phone"></i>
            <span>+000 - 123 -456 - 789</span>
        </address>
    </div>
    <form>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input type="text" name="subject" class="form-control" placeholder="Subject*">
                </div>
                <div class="form-group">
                    <input type="text" name="name" class="form-control" placeholder="Name*">
                </div>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Email*">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <textarea class="form-control" placeholder="Message goes here..."></textarea>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary">Send</button>
            </div>
        </div>
    </form>
</div>
</section>

</div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
            <img src="img/logo-white.png" class="logo-footer" />
                <ul class="social">
                    <li class="wow bounceIn"><a href="http://goo.gl/RqhEjP" target="_blank"><i class="fa fa-facebook"></i></a></li>
                    <li class="wow bounceIn" data-wow-delay="0.1s"><a href="http://goo.gl/hUfpSB" target="_blank"><i class="fa fa-twitter"></i></a></li>
                    <li class="wow bounceIn" data-wow-delay="0.2s"><a href="http://goo.gl/k9zAy5" target="_blank"><i class="fa fa-dribbble"></i></a></li>
                    <li class="wow bounceIn" data-wow-delay="0.3s"><a href="http://goo.gl/FPjuCE" target="_blank"><i class="fa fa-behance"></i></a></li>
                    <li class="wow bounceIn" data-wow-delay="0.4s"><a href="http://goo.gl/UYjGTR" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                    <li class="wow bounceIn" data-wow-delay="0.5s"><a href="http://goo.gl/r4xzR4" target="_blank"><i class="fa fa-google"></i></a></li>
                </ul>
                <p>Theme created by <a href="http://graphberry.com" target="_blank">our website</p>
            </div>
        </div>
    </div>
</footer>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/smooth-scroll.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
