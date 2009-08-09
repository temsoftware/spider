class Option < ActiveRecord::Base
  has_many :options_vehicle
  has_many :vehicle, :through => :options_vehicle
end
