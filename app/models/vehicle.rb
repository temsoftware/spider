class Vehicle < ActiveRecord::Base
  belongs_to :car
  belongs_to :year
  belongs_to :model
  belongs_to :type_vehicle
  belongs_to :fuel
  belongs_to :gear
  belongs_to :color

 # has_many   :option, :through => :option_vehicle
  has_many :picture, :dependent => :destroy
  has_many :option,  :through =>   :options_vehicle
  has_many :options_vehicle

  named_scope :carros, { :conditions => ["type_vehicle_id = 1"]}
  named_scope :motos,  { :conditions => ["type_vehicle_id = 3"]}
  named_scope :taxis,  { :conditions => ["type_vehicle_id = 2"]}

  #validates_presence_of :amount
  #validates_presence_of :note
  #validates_presence_of :year
  #validates_presence_of :model
  #validates_presence_of :doors
  #validates_presence_of :km

#validates_presence_of :car
  #validates_presence_of :color
  #validates_presence_of :gear
  #validates_presence_of :fuel
  #validates_presence_of :type_vehicle

  def to_label
    "#{car.brand.name} #{car.name} #{color.name} #{year} / #{model}"
  end

  def amount_to_float
     number_with_precision("#{amount}", :precision => 5)
  end

end
