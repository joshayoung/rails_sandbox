require 'rails_helper'

RSpec.describe Darkness, type: :model do
  describe "ActiveModel::Model" do
    it "allows us to create an instance by passing a hash" do
      darkness = Darkness.new(
        low_temperature: "43 deg",
        night_hours: "8",
        rain_level: "0.25in"
      )

      expect(darkness.low_temperature).to eq "43 deg"
      expect(darkness.night_hours).to eq "8"
      expect(darkness.rain_level).to eq "0.25in"
    end
  end
  describe "ActiveModel::Validations" do
    it "returns false when invalid data is used" do
      darkness = Darkness.new(
        low_temperature: "100",
        night_hours: "8"
      )

      expect(darkness.valid?).to eq false
    end

    it "returns true with valid data" do
      darkness = Darkness.new(
        low_temperature: 10,
        night_hours: "8",
        rain_level: "2in"
      )

      expect(darkness.valid?).to eq true
    end
  end
end
