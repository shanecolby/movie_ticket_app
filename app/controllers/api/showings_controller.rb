class Api::ShowingsController < ApplicationController
  

  def index 
    @showings = Showing.all
    render "index.json.jb"
  end

  def show
    @showing = Showing.find(params[:id])
    @sale = Sale.new
  end

  def create
    @showing = Showing.new(
      movie_id: params[:movie_id],
      auditorium_id: params[:auditorium_id],
      time: params[:time],
      available_seats: params[:available_seats]
    )
    @showing.save
    render "show.json.jb"
  
    
  end

  def update
    @showing = Showing.find_by(id: params[:id])

    @showing.movie_id = params[:movie_id] || @showing.movie_id,
    @showing.auditorium_id = params[:auditorium_id] || @showing.auditorium_id,
    @showing.time = params[:time] || @showing.time,
    @showing.available_seats = params[:available_seats] || @showing.available_seats

    @showing.save
    render "show.json.jb"
  end

  def destroy
    @showing = Showing.find_by(id: params[:id])
    @showing.destroy
    render json: {
      message: "showing has been removed"
    }
  end

end
