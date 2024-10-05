class GenresController < ApplicationController
  def new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genres_path
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def index
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genres_path
  end

  def destroy
    @genre = Genre.find(params[:id])
    if @genre.movies.any? || @genre.directors.any?
      flash[:alert] = 'Gênero não pôde ser deletado'
      redirect_to genres_path
    else
      @genre.delete
      redirect_to genres_path
    end
  end
end
