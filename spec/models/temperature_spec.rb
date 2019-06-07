require 'rails_helper'

RSpec.describe Temperature, type: :model do
  describe "model"
  it "creates an object with correct attributes" do
    temperature = Temperature.new(high: 90, low: 32, humidity: "70%")

    expect(temperature.high).to eq(90)
    expect(temperature.low).to eq(32)
    expect(temperature.humidity).to eq("70%")
  end
end
