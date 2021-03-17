class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :sales

  def available_seats
    auditorium.seating_capacity - sales.count
    # if seating_capacity == 0;
    #   render json: {message: "SOLD OUT"}
    # end

  end

end
