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

@WebServlet(name = "ShowMovieServlet", value = "/ShowMovie-servlet")
public class ShowMovie extends HttpServlet {
    private String message;
    private MovieDAO film;
    public void init() throws ServletException {
        super.init();
        Connection connection = null;
        try {
            connection = Connectiondb.getConnection();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQLException appropriately
        }
        film = new MoviesDAOImpl(connection);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
     
        try {
            request.setAttribute("filmlist", film.getAllMovies());
            System.out.println(film.getAllMovies());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    request.getRequestDispatcher("/home.jsp").forward(request,response);
    }

    public void destroy() {
    }
}