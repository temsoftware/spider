class BrandsController < ApplicationController
  active_scaffold :brand do |item|
    item.label = "Marcas"
    item.columns = [:name, :created_at]
    item.columns[:name].label = "Nome"
    item.columns[:created_at].label = "Criado em"

    item.actions.exclude :show
  end
end
