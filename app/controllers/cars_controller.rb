class CarsController < ApplicationController
  layout "admin"

  active_scaffold :cars do |item|
    item.label = "Modelos"
    item.columns = [:name, :created_at]
    item.columns[:name].label = "Nome"
    item.columns[:brand].label = "Marca"
    item.columns[:brand].form_ui = :select
    item.columns[:created_at].label = "Criado em"

    item.actions.exclude :show
    item.create.columns = [:name, :brand]
    item.update.columns = [:name, :brand]
  end
end
