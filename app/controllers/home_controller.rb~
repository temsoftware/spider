class HomeController < ApplicationController
  skip_before_filter :authenticate
  
  layout "ricar"

  def index
    @cars = Vehicle.all(:conditions => ["type_vehicle_id = 1"])
    @bikes = Vehicle.all(:conditions => ["type_vehicle_id = 3"])
  end

end
