package DAO;

import Modals.Movie;

import java.sql.SQLException;
import java.util.List;

public interface MovieDAO {
    // Method to insert a new movie
    void insertMovie(Movie movie) throws SQLException;

    // Method to retrieve all movies
    List<Movie> getAllMovies() throws SQLException;

    // Method to retrieve a movie by its ID
    Movie getMovieById(int filmId) throws SQLException;

    // Method to update a movie
    void updateMovie(Movie movie) throws SQLException;

    // Method to delete a movie
    void deleteMovie(int filmId) throws SQLException;
    
    List<Movie> searchMoviesByTitle(String title) throws SQLException;

	List<Movie> getAllMoviesadmin() throws SQLException;

	Movie getMovieByIdadmin(int filmId) throws SQLException;
}

