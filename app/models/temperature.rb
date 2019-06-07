class Temperature
  attr_accessor :high
  attr_accessor :low
  attr_accessor :humidity

  def initialize(attr = {})
    attr.each { |name, value| send("#{name}=", value) }
  end
end
