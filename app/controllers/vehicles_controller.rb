class VehiclesController < ApplicationController
  layout "admin"

  active_scaffold :vehicle do |item|
    item.label = "Carros Anunciados"
    item.columns =  [:car, :type_vehicle, :year, :model, :amount, :km, :doors, :color, :fuel, :gear, :finale]
    item.columns[:type_vehicle].label = "Tipo"
    item.columns[:type_vehicle].form_ui = :select
    item.columns[:car].label = "Marca / Modelo"
    item.columns[:car].form_ui = :select
    item.columns[:year].label = "Ano"
    item.columns[:year].form_ui = :select
    item.columns[:model].label = "Modelo"
    item.columns[:model].form_ui = :select
    item.columns[:amount].label = "Valor"
    item.columns[:km].label = "Km"
    item.columns[:doors].label = "Portas"
    item.columns[:finale].label = "Final"
    item.columns[:note].label = "Observação"
    item.columns[:color].label = "Cor"
    item.columns[:color].form_ui = :select
    item.columns[:fuel].label = "Combustível"
    item.columns[:fuel].form_ui = :select
    item.columns[:gear].label = "Câmbio"
    item.columns[:gear].form_ui = :select
    item.columns[:option].label = "Opcionais"
    item.columns[:option].form_ui = :select
    item.columns[:created_at].label = "Criado em"
    item.columns[:picture].label = "Imagens"


    # item.columns[:car].search_sql = 'cars.name'
    # item.columns[:car].search_sql = 'brands.name'
    # item.search.columns = [:car]#, :brand]

    #item.create.columns.exclude :options_vehicle
    #item.update.columns.exclude :options_vehicle

    item.actions.exclude :nested
    item.create.multipart = true
    item.create.columns = [:type_vehicle, :car, :year, :model, :amount, :km, :doors, :finale, :note, :color,:fuel, :gear, :option, :picture]
    item.show.columns   = [:car, :model, :year, :color, :fuel, :gear, :options_vehicle, :picture]

    item.update.multipart = true
    item.update.columns = [:car, :type_vehicle, :year, :model, :amount, :km, :doors, :color, :fuel, :gear, :finale,:option,:picture]
  end
end

