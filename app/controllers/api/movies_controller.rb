class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render "index.json.jb"

  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title]
    )
    @movie.save
    render "show.json.jb"

  end

  def update
    @movie = Movie.find_by(id: params[:id])

    @movie.title = params[:title] || @movie.title

    @movie.save
    render "show.json.jb"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {
      message: "Movie has been removed"
    }
  end

end
