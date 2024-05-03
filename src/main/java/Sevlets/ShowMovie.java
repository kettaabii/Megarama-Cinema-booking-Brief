package Sevlets;

import MYSQLIMP.MoviesDAOImpl;

import java.io.*;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ShowMovieServlet", value = "/ShowMovie-servlet")
public class ShowMovie extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        MoviesDAOImpl film = new MoviesDAOImpl();
        try {
            request.setAttribute("filmlist", film.getAllMovies());

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    request.getRequestDispatcher("/cllogin.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


    }
    public void destroy() {
    }
}