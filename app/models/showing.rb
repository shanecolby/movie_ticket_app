class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :sales

  def available_seats
    auditorium.seating_capacity - sales.count
  end

end
