class Booking < ApplicationRecord
  enum animal_type: { Dog: 'Dog', Cat: 'Cat' }
  
  validates :hours_requested, inclusion: { in: 2..8 }
end