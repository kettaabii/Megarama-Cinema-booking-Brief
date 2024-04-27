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
import DAO.ReservationDAO;
import MYSQLIMP.Connectiondb;
import MYSQLIMP.MoviesDAOImpl;
import MYSQLIMP.ReservationDAOImpl;
import Modals.Reservation;

/**
 * Servlet implementation class pageuser
 */
@WebServlet("/pageuser")
public class pageuser extends HttpServlet {
    private String message;
    private MovieDAO film;
    private  ReservationDAO reservationdao;
    public void init() throws ServletException {
        super.init();
        Connection connection = null;
        try {
            connection = Connectiondb.getConnection();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQLException appropriately
        }
        film = new MoviesDAOImpl(connection);
        reservationdao = new ReservationDAOImpl(connection);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
     
        try {
        	
            request.setAttribute("filmlist", film.getAllMovies());
            System.out.println(film.getAllMovies());
            List<Reservation> reservations  = reservationdao.getAllReservations();
      	    request.setAttribute("reservations", reservations);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    request.getRequestDispatcher("/cllogin.jsp").forward(request,response);
    }

    public void destroy() {
    }
}
