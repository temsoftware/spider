class VehiclesController < ApplicationController
  active_scaffold :vehicle do |item|
    item.label = "Carros Anunciados"
    item.columns = [:car, :year, :model, :color, :fuel, :gear]
    item.columns[:car].label = "Marca / Modelo"
    item.columns[:car].form_ui = :select
    item.columns[:year].label = "Ano"
    item.columns[:model].label = "Modelo"
    item.columns[:color].label = "Cor"
    item.columns[:fuel].label = "Combustível"
    item.columns[:gear].label = "Câmbio"
    item.columns[:created_at].label = "Criado em"

    item.columns[:car].search_sql = 'cars.name'
    #item.columns[:car].search_sql = 'brands.name'
    item.search.columns =  [:car]#, :brand]

    item.actions.exclude :nested
    item.show.columns = [:car, :model, :year, :color, :fuel, :gear]
  end
end
