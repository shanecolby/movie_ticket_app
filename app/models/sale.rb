class Sale < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  belongs_to :showing
end
