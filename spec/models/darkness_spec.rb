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
end
