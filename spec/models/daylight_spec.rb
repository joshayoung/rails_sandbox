require 'rails_helper'

RSpec.describe Daylight, type: :model do
  describe "model" do
    it "returns a populated instance when calling '.values'" do
      daylight = Daylight.values

      expect(Daylight.values).to be_an_instance_of(Daylight)
      expect(daylight.sunrise).to eq("5:00 am")
      expect(daylight.temperature).to eq("70 deg")
    end
  end
end
