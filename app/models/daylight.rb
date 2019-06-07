class Daylight

  attr_accessor :sunrise, :sunset, :day_length, :temperature

  class << self
    def values
      new(
        sunrise: "5:00 am",
        sunset: "7:45 pm",
        day_length: "14.75 hrs",
        temperature: "70 deg"
      )
    end
  end

  def initialize( sunrise:, sunset:, day_length:, temperature:)
    @sunrise = sunrise
    @sunset = sunset
    @day_length = day_length
    @temperature = temperature
  end
end
