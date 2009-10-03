class TypeVehiclesController < ApplicationController
  layout "admin"

  active_scaffold :type_vehicle do |item|
    item.label = "Tipos de Veículo"
    item.columns = [:description, :created_at]
    item.columns[:description].label = "Descrição"
    item.columns[:created_at].label = "Criado em"

    item.actions.exclude :show
  end
end
