class Api::AuditoriumsController < ApplicationController
  def index
    @auditoriums = Auditorium.all
    render "index.json.jb"
  end

  def show
    @auditorium = Auditorium.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @auditorium = Auditorium.find_by(id: params[:id])

    @auditorium.theater_id = params[:theater_id] || @auditorium.theater_id,
    @auditorium.auditorium_number = params[:auditorium_number] || @auditorium.auditorium_number,
    @auditorium.seating_capacity = params[:seating_capacity] || @auditorium.seating_capacity

    # @auditorium.save
    render "show.json.jb"
  end

  def destroy
    @auditorium = Auditorium.find_by(id: params[:id])
    @auditorium.destroy
    render json: {
      message: "auditorium has been removed"
    }
  end
end
