class HomeController < ApplicationController
  def welcome
    @genres = Genre.all
  end
end
