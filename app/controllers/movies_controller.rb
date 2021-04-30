class MoviesController < ApplicationController
  def index
    @movies = Movie.All
  end
end
