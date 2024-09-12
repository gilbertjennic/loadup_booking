require 'rails_helper'

RSpec.describe PricingEngineService, type: :service do
  it 'calculates price for a dog' do
    price = PricingEngineService.calculate('Dog', 3)
    expect(price).to eq(50)
  end

  it 'calculates price for a cat' do
    price = PricingEngineService.calculate('Cat', 3)
    expect(price).to eq(35)
  end
end
