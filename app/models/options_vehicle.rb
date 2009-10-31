class OptionsVehicle < ActiveRecord::Base

#  set_table_name :options_vehicles

  belongs_to :vehicle
  belongs_to :option

  def to_label
    "#{option.description}"
  end
end

