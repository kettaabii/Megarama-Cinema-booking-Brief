package Sevlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ReservationDAO;
import MYSQLIMP.Connectiondb;
import MYSQLIMP.ReservationDAOImpl;
import Modals.Reservation;

/**
 * Servlet implementation class AddReservation
 */
@WebServlet("/AddReservation")
public class AddReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private ReservationDAO  reservationDAO;
    public AddReservation() {
        super();
       
    }
    public void init() throws ServletException {
        super.init();
        Connection connection = null;
        try {
            connection = Connectiondb.getConnection();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQLException appropriately
        }
        reservationDAO = new ReservationDAOImpl(connection);
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reservationId = Integer.parseInt(request.getParameter("reservationId "));
        String viewer = request.getParameter("viewer");
        String filmTitle = request.getParameter("filmTitle");
        String reservationDate=request.getParameter("reservationDate");
        int seat = Integer.parseInt(request.getParameter("seat"));
        int price = Integer.parseInt(request.getParameter("price"));
        
        
        
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date parsedStartDate = dateFormat.parse(reservationDate);
           

            
            Modals.Reservation reservation = new Reservation(reservationId, viewer, filmTitle, parsedStartDate, seat,price);
            reservationDAO.insertReservation(reservation);

            response.sendRedirect(request.getContextPath() + "/t");
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
        
       
	}

}
