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

import DAO.ReservationDAO;
import MYSQLIMP.Connectiondb;
import MYSQLIMP.ReservationDAOImpl;
import MYSQLIMP.UserDAOImpl;
import Modals.Reservation;


@WebServlet("/listreservationsservlet")
public class listreservationsservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  private  ReservationDAO reservationdao;
	  public void init() throws ServletException {
	        super.init();
	        Connection connection = null;
	        try {
	            connection = Connectiondb.getConnection();
	        } catch (SQLException e) {
	            e.printStackTrace(); // Handle SQLException appropriately
	        }
	        reservationdao = new ReservationDAOImpl(connection);
	    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        try {
        	List<Reservation> reservations  = reservationdao.getAllReservations();
        	  request.setAttribute("reservations", reservations);

              request.getRequestDispatcher("cllogin.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }


      
        }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
