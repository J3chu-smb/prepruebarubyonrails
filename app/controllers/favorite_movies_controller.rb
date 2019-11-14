class FavoriteMoviesController < ApplicationController

before_action :set_movie, only: %i[create destroy]

  def create
    @movie.favorite = true
    @movie.save
    redirect_to movies_path, notice: 'Movie added to favorites'
  end

  def destroy
    @movie.favorite = false
    @movie.save
    redirect_to movies_path, notice: 'Movie removed from favorites'
  end
end


  def update
  @movie = Movie.find(params[:id])
  if @movie.favorite?
  @movie.save
  redirect_to movies_path, notice: 'Movie added to favorites'
  else
  @movie.favorite = false
  @movie.save
  redirect_to movies_path, notice: 'Movie removed from favorites'
  end
end
