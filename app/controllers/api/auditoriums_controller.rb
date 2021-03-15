class Api::AuditoriumsController < ApplicationController
  def index
    @auditoriums = Auditorium.all
    render "index.json.jb"
  end

  def show
  end

  def update
  end

  def destroy
  end
end
