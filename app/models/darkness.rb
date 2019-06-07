class Darkness
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :low_temperature, :night_hours, :rain_level

  validates :rain_level, presence: true

  validates :low_temperature, inclusion: { in: 0..50, message: 'The temperature is too low' }

end
