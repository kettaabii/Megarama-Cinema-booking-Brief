package Sevlets;


import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MovieDAO;
import MYSQLIMP.Connectiondb;
import MYSQLIMP.MoviesDAOImpl;
import Modals.Movie;

@WebServlet("/updateservlet")

public class UpdateServlet extends HttpServlet {
    private MovieDAO movieDAO;

    public void init() throws ServletException {
        super.init();
        // Initialize database connection
        Connection connection = null;
        try {
            connection = Connectiondb.getConnection();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQLException appropriately
        }
        movieDAO = new MoviesDAOImpl(connection);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérer les paramètres du formulaire
        int filmId = Integer.parseInt(request.getParameter("filmId"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        Date releaseDate = Date.valueOf(request.getParameter("releaseDate")); // Assurez-vous que le format de la date est correct
        int duration = Integer.parseInt(request.getParameter("duration"));
        String genre = request.getParameter("genre");
        String director = request.getParameter("director");
        String cover = request.getParameter("cover");

        Movie movie = new Movie(filmId, title, description, releaseDate, duration, genre, director, cover);

        try {
            movieDAO.updateMovie(movie);
            response.sendRedirect("affcihermovies");
        } catch (SQLException e) {
            e.printStackTrace();
            // Gérer les erreurs de mise à jour
            response.getWriter().println("Erreur lors de la mise à jour du film.");
        }
    }
}