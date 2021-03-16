class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :sales

  def available_seats
    #auditorum cap - sales
    # sum = 0
    # sales.each do |sale|
    #   sum = sum + 1
    # end
    auditorium.seating_capacity - sales.count


  end

end
