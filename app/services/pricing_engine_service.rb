class PricingEngineService
  BASE_CHARGE = 20
  DOG_RATE = 10
  CAT_RATE = 5

  def self.calculate(animal_type, hours)
    additional_charge = animal_type == 'Dog' ? DOG_RATE * hours : CAT_RATE * hours
    BASE_CHARGE + additional_charge
  end
end
