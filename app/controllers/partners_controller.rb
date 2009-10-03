class PartnersController < ApplicationController
  layout "admin"

   active_scaffold :partner do |item|
    item.label = "Parceiros"
    item.columns = [:name, :image]
    item.columns[:name].label = "Nome"
    item.columns[:image].label = "Imagem"

    item.actions.exclude :show
  end
end

