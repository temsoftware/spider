class StoresController < ApplicationController
    layout "admin"

   active_scaffold :store do |item|
    item.label = "Lojas"
    item.columns = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone]
    item.columns[:name].label           = "Nome"
    item.columns[:street].label         = "Rua"
    item.columns[:number].label         = "Número"
    item.columns[:neighborhood].label   = "Bairro"
    item.columns[:cep].label            = "CEP"
    item.columns[:city].label           = "Cidade"
    item.columns[:state].label          = "Estado"
    item.columns[:telephone].label      = "Telefone"
    item.columns[:data].label           = "Mapa"
    #item.columns[:image].label = "Imagem"


    item.create.columns = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone, :data]
    item.show.columns   = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone, :data]
    item.update.columns = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone, :data]

    item.actions.exclude :show
  end
end

