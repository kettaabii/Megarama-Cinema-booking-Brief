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
import MYSQLIMP.MoviesDAOImpl;
import Modals.Movie;
import MYSQLIMP.Connectiondb;


/**
 * Servlet implementation class MovieServletsearch
 */
@WebServlet("/MovieServletsearch")
public class MovieServletsearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
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
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String title = request.getParameter("title");
		    if (title != null && !title.isEmpty()) {
		        try {
		            List<Movie> movies = movieDAO.searchMoviesByTitle(title);
		            request.setAttribute("movies", movies);
		        } catch (SQLException e) {
		            request.setAttribute("errorMessage", "Une erreur s'est produite lors de la recherche de films.");
		            request.getRequestDispatcher("error.jsp").forward(request, response);
		            return;
		        }
		    }
		    request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
