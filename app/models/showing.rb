class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :sales
end
