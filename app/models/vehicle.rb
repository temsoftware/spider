class Vehicle < ActiveRecord::Base
  belongs_to :car
  belongs_to :type_vehicle
  belongs_to :fuel
  belongs_to :gear
  belongs_to :color

 # has_many   :option, :through => :option_vehicle
  has_many :options_vehicle
  has_many :option, :through => :options_vehicle
end
