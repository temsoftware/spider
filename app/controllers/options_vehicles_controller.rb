class OptionsVehiclesController < ApplicationController
   layout "admin"

  active_scaffold :options_vehicle do |item|
    item.label = "Opcionáis"
    item.actions.exclude :show
  end
end

