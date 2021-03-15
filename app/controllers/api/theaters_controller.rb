class Api::TheatersController < ApplicationController

  def index
    @theaters = Theater.all
    render "index.json.jb"
  end

  def show
    @theater = Theater.find_by(id: params[:id])
  end

  def destroy
    @theater = Theater.find_by(id: params[:id])
    @theater.destroy
    render json: {
      message: "Theater has been removed"
    }
  end
end
