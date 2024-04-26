package Sevlets;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MYSQLIMP.ReservationDAOImpl;
import MySQL.MySQLReservationDAO;
import model.Reservation;

/**
 * Servlet implementation class AddReservation
 */
@WebServlet("/AddReservation")
public class AddReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddReservation() {
        super();
       
    }
    public void init() {
        reservationDAO = new ReservationDAOImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reservationId = request.getParameter("reservationId");
        String viewer = request.getParameter("viewer");
        String filmTitle = request.getParameter("filmTitle");
        Date reservationDate=request.getParameter("reservationDate");
        int seat = Integer.parseInt(request.getParameter("seat"));
        int price = Integer.parseInt(request.getParameter("price"));
        
        
        
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        
        
        
        
        Reservation reservation = new Reservation(reservationId, viewer, filmTitle, reservationDate, seat,price);
        reservationDAO.createReservation(reservation);

        response.sendRedirect(request.getContextPath() + "/t");
	}

}
