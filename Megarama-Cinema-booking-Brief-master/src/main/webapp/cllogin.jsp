
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="Modals.Reservation" %>
<html>
<head>


    <title>page client </title>
    
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
                        <a class="nav-link text-light mx-lg-2 mx-4" href="#slider1">Add Reservation </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light mx-lg-2 mx-4" href="#Reservations">Our Reservations</a>
                    </li>
                </ul>
            </div>            
        </div>
        <div class="search">
            <form action="MovieServletsearch" method="get">
        <input type="text" id="title" name="title"  placeholder=" title movie">
<!--         <button type="submit" height="10px">Search</button> -->
    </form>
        </div>
        <i class='bx bx-user bx-flip-horizontal icon rounded' style='color:white'></i>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
     <li class="nav-item">
                          
                        <a class="nav-link text-light mx-lg-2 mx-4" href="login.jsp"><img src="img/logout.png" alt="logout" with="10px" height="10PX">logout</a>
                    </li>
</nav>

<div id="slider">  </div> 
  <br>
  <br>
<h2 style="color: white; margin: 1rem;">Films de cinéma </h2>


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
<div id="slider1">  </div> 


<h2 style="color: white; margin: 1rem;">Add Reservation </h2>































 <div id="Reservations">  </div> 
 <br>
  <br>
   <br>
    <br>
     <br>
     
 <div class="container">
        <h1>Liste des reservations</h1>
       
        <h2 style="color: white; margin: 1rem;">Our Reservations </h2>
        <%-- Vérifiez si la liste des films existe dans la requête --%>
        <% if (request.getAttribute("reservations") != null) { %>
            <%-- Obtenez la liste des films depuis la requête --%>
            <% List<Reservation> reservations = (List<Reservation>)request.getAttribute("reservations"); %>
            
            <div class="row">
                <%-- Parcourir la liste des films et afficher les détails --%>
                <% for (Reservation reservation : reservations) { %>
                    <div class="col-md-4">
                        <div class="card mb-3">
                           
                            <div class="card-body">
                                <h5 class="card-title"><%= reservation.getReservationId() %></h5>
                                <p class="card-title"> Viewer:<%=reservation.getViewer()%></p>
                                 <p class="card-title"><strong>Title:</strong> <%= reservation.getFilmTitle() %></p>     
                                <p class="card-title"><strong>Reservation Date :</strong> <%= reservation.getReservationDate() %></p>
                                <p class="card-title"><strong>le Price :</strong> <%= reservation.getPrice() %></p>
                                 <p class="card-title"><strong>Seat : </strong> <%= reservation.getSeat() %></p>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
        <% } else { %>
            <p>Aucun film trouvé.</p>
        <% } %>
    </div>
    




<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/smooth-scroll.js"></script>
<script src="js/custom.js"></script>

</body>
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
</html>
