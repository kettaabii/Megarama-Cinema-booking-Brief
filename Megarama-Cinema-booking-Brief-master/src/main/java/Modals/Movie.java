package Modals;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Movie {
    private int filmId;
    private String Title;
    private String Description;
    private Date releaseDate;
    private int Duration;
    private String Genre;
    private String Director ;
    private String Cover;
    private String MegaCover;
    
    public Movie(int filmId, String title, String description, Date releaseDate, int duration, String genre, String director, String cover, String megaCover) {
        this.filmId = filmId;
        Title = title;
        Description = description;
        this.releaseDate = releaseDate;
        Duration = duration;
        Genre = genre;
        Director = director;
        Cover = cover;
        MegaCover = megaCover;
    }
    public Movie(Integer filmId, String title, String description, Date releaseDate, Integer duration, String genre, String director, String cover) {
        this.filmId = filmId;
        Title = title;
        Description = description;
        this.releaseDate = releaseDate;
        Duration = duration;
        Genre = genre;
        Director = director;
        Cover = cover;
    }
    public Movie(String title, String description, Date releaseDate, Integer duration, String genre, String director, String cover) {
        Title = title;
        Description = description;
        this.releaseDate = releaseDate;
        Duration = duration;
        Genre = genre;
        Director = director;
        Cover = cover;
    }
   
    public String getMegaCover() {
        return MegaCover;
    }

    public void setMegaCover(String megaCover) {
        MegaCover = megaCover;
    }
	public void setReleaseDateFromString(String releaseDateStr) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            // Parse the string into a Date object
            this.releaseDate = dateFormat.parse(releaseDateStr);
        } catch (ParseException e) {
            // Handle parsing exception
            e.printStackTrace();
        }
    }
    public Integer getFilmId() {
        return filmId;
    }

    public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Integer getDuration() {
        return Duration;
    }

    public void setDuration(Integer duration) {
        Duration = duration;
    }

    public String getGenre() {
        return Genre;
    }

    public void setGenre(String genre) {
        Genre = genre;
    }

    public String getDirector() {
        return Director;
    }

    public void setDirector(String director) {
        Director = director;
    }

    public String getCover() {
        return Cover;
    }

    public void setCover(String cover) {
        Cover = cover;
    }
    @Override
    public String toString() {
        return "Movie{" +
                "filmId=" + filmId +
                ", Title='" + Title + '\'' +
                ", Description='" + Description + '\'' +
                ", releaseDate='" + releaseDate + '\'' +
                ", Duration=" + Duration +
                ", Genre='" + Genre + '\'' +
                ", Director='" + Director + '\'' +
                ", Cover='" + Cover + '\'' +
                ", MegaCover='" + MegaCover + '\'' +
                '}';
    }
}
