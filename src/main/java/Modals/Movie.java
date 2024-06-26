package Modals;

import java.util.Date;

public class Movie {
    private int filmId;
    private String Title;
    private String Description;
    private String releaseDate;
    private int Duration;
    private String Genre;
    private String Director ;
    private String Cover;
    private String MegaCover;

    public Movie(int filmId, String title, String description, String releaseDate, int duration, String genre, String director, String cover, String megaCover) {
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

    public String getMegaCover() {
        return MegaCover;
    }

    public void setMegaCover(String megaCover) {
        MegaCover = megaCover;
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

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
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
