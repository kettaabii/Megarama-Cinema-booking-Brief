package Sevlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MovieDAO;
import Modals.Movie;
import MYSQLIMP.Connectiondb;
import MYSQLIMP.MoviesDAOImpl;

/**
 * Servlet implementation class affcihermovies
 */
@WebServlet("/affcihermovies")
public class affcihermovies extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MovieDAO movieDAO;

    public void init() throws ServletException {
        super.init();
        Connection connection = null;
        try {
            connection = Connectiondb.getConnection();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQLException appropriately
        }
        movieDAO = new MoviesDAOImpl(connection);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
         
            List<Movie> movies = movieDAO.getAllMoviesadmin();
            
      
            request.setAttribute("movies", movies);
            
    
            request.getRequestDispatcher("afficheMovies.jsp").forward(request, response);
        } catch (SQLException e) {
        
            e.printStackTrace(); 
            response.getWriter().println("Erreur lors de la récupération des films.");
        }
    }


    	
    	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	    if (request.getParameter("filmId") != null) {
    	        int filmId = Integer.parseInt(request.getParameter("filmId"));
    	        try {
    	            movieDAO.deleteMovie(filmId);
    	        } catch (SQLException e) {
    	            e.printStackTrace();
    	            response.getWriter().println("Erreur lors de la suppression du film.");
    	        }
    	    }
    	    
    	    if (request.getParameter("updateFilmId") != null) {
    	        int filmId = Integer.parseInt(request.getParameter("updateFilmId"));
    	        try {
    	            Movie movie = movieDAO.getMovieById(filmId);
    	            
    	            request.setAttribute("movie", movie);
    	            
    	            request.getRequestDispatcher("afficheMovies.jsp").forward(request, response);
    	            return; 
    	        } catch (SQLException e) {
    	         
    	            e.printStackTrace();
    	            response.getWriter().println("Erreur lors de la récupération des informations du film.");
    	        }
    	    }
    	    
    	
    	    doGet(request, response);
    	}

   
}
