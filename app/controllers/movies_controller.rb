class MoviesController < ApplicationController
  def index
    if params[:query].present?
      #ILIKE makes the query case insensitive
      @movies = Movie.where("title ILIKE :query ? OR syllabus ILIKE :query", query: params[:query])
    else
      @movies = Movie.all
    end
  end
end
