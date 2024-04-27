package Sevlets;

import MYSQLIMP.Connectiondb;
import MYSQLIMP.MoviesDAOImpl;

import java.io.*;
import java.sql.Connection;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MovieDAO;
@WebServlet("/BookMovie")
public class Bookmovie extends HttpServlet {
    private String message;
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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String filmId = req.getParameter("FilmId");
        super.doPost(req, resp);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response, int filmId) throws IOException {
       
        try {
            request.setAttribute("filmtobook", movieDAO.getMovieById(filmId));
            System.out.println(movieDAO.getMovieById(filmId));
            response.sendRedirect("Said.jsp");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void destroy() {
    }
}