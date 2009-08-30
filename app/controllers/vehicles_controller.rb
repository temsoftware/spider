class VehiclesController < ApplicationController
  active_scaffold :vehicle do |item|
    item.label = "Carros Anunciados"
    item.columns = [:car, :year, :model, :color, :fuel, :gear]
    item.columns[:car].label = "Marca / Modelo"
    item.columns[:car].form_ui = :select
    item.columns[:year].label = "Ano"
    item.columns[:model].label = "Modelo"
    item.columns[:color].label = "Cor"
    item.columns[:color].form_ui = :select
    item.columns[:fuel].label = "Combustível"
    item.columns[:fuel].form_ui = :select
    item.columns[:gear].label = "Câmbio"
    item.columns[:gear].form_ui = :select
    item.columns[:picture1].label = "Imagem 1"
    item.columns[:picture2].label = "Imagem 2"
    item.columns[:picture3].label = "Imagem 3"
    item.columns[:picture4].label = "Imagem 4"
    item.columns[:picture5].label = "Imagem 5"
    item.columns[:picture6].label = "Imagem 6"
    item.columns[:created_at].label = "Criado em"

    item.columns[:car].search_sql = 'cars.name'
    #item.columns[:car].search_sql = 'brands.name'
    item.search.columns = [:car]#, :brand]

    item.actions.exclude :nested
    item.create.columns = [:car, :model, :year, :color, :fuel, :gear, 
                           :picture1, :picture2, :picture3, :picture4, :picture5, :picture6]
    item.show.columns = [:car, :model, :year, :color, :fuel, :gear, 
                         :picture1, :picture2, :picture3, :picture4, :picture5, :picture6]
  end
end
