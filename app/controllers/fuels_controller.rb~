class FuelsController < ApplicationController
  active_scaffold :fuel do |item|
    item.label = "Combustível"
    item.columns = [:name, :created_at]
    item.columns[:name].label = "Nome"
    item.columns[:created_at].label = "Criado em"

    item.actions.exclude :show
  end
end
