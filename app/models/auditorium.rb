class Auditorium < ApplicationRecord
  belongs_to :theater
  has_many :showings
end
