class SunService

  def sunrise
    data["sunrise"]
  end

  def data
    @data ||= HTTParty.get('https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400')["results"]
  end
private
end
