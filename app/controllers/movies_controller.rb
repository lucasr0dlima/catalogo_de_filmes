class MoviesController < ApplicationController
  def new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :launch_year, :sinopsis, :country, :duration, :director_id, :genre_id))
    @movie.save
    redirect_to root_path
  end
  def index
    @genres = Genre.all
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(params.require(:movie).permit(:title, :launch_year, :sinopsis, :country, :duration, :director_id, :genre_id))
    redirect_to movies_path
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end
end
