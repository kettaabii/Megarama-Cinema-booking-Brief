<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modals.Movie" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Affichage des films</title>
    <!-- Ajoutez le lien vers Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Liste des films</h1>
        
        <%-- Vérifiez si la liste des films existe dans la requête --%>
        <% if (request.getAttribute("movies") != null) { %>
            <%-- Obtenez la liste des films depuis la requête --%>
            <% List<Movie> movies = (List<Movie>) request.getAttribute("movies"); %>
            
            <div class="row">
                <%-- Parcourir la liste des films et afficher les détails --%>
                <% for (Movie movie : movies) { %>
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <img src="<%= movie.getCover() %>" class="card-img-top" alt="Image de couverture">
                            <div class="card-body">
                                <h5 class="card-title"><%= movie.getTitle() %></h5>
                                <p class="card-text"><%= movie.getDescription() %></p>
                                <p class="card-text"><strong>Date de sortie:</strong> <%= movie.getReleaseDate() %></p>
                                <p class="card-text"><strong>Durée:</strong> <%= movie.getDuration() %> minutes</p>
                                <p class="card-text"><strong>Genre:</strong> <%= movie.getGenre() %></p>
                                <p class="card-text"><strong>Réalisateur:</strong> <%= movie.getDirector() %></p>
                                <form action="affcihermovies" method="post">
                                <input type="hidden" name="filmId" value="<%= movie.getFilmId() %>">
                                <button type="submit" class="btn btn-danger">Supprimer</button>
                                </form>
                                 <form action="update.jsp" method="post">
                                    <input type="hidden" name="filmId" value="<%= movie.getFilmId() %>">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </form>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
        <% } else { %>
            <p>Aucun film trouvé.</p>
        <% } %>
    </div>
    
    <!-- Ajoutez le lien vers jQuery et Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
