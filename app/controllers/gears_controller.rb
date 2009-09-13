class GearsController < ApplicationController
  layout "admin"

  active_scaffold :gear do |item|
    item.label = "Câmbios"
    item.columns = [:name, :created_at]
    item.columns[:name].label = "Nome"
    item.columns[:created_at].label = "Criado em"

    item.actions.exclude :show
  end
end
