class Booking < ApplicationRecord
  enum animal_type: { Dog: 'Dog', Cat: 'Cat' }
  
  validates :hours_requested, inclusion: { in: 2..8 }
  validates :first_name, :animal_type, presence: true

  def price
    PricingEngineService.calculate(animal_type, hours_requested)
  end
end