class DirectorsController < ApplicationController
  def new
  end

  def create
    @director = Director.new(params.require(:director).permit(:name, :nationality, :birth_date, :genre_id))
    @director.save
    redirect_to root_path
  end

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    @director.update(params.require(:director).permit(:name, :nationality, :birth_date, :genre_id))
    redirect_to directors_path
  end

  def destroy
    @director = Director.find(params[:id])
    if @director.movies.any?
      flash[:alert] = 'Diretor não pôde ser deletado'
      redirect_to genres_path
    else
      @director.delete
      redirect_to genres_path
    end
  end
end
