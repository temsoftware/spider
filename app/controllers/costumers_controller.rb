class CostumersController < ApplicationController
  layout "admin"

   active_scaffold :costumer do |item|
     item.label = "Clientes"

     item.columns = [:name, :email, :tel, :news]

     item.columns[:name].label    = "Nome"
     item.columns[:email].label   = "E-Mail"
     item.columns[:tel].label     = "Telefone"
     item.columns[:news].label    = "Receber Promoções"

     item.columns[:news].form_ui = :checkbox

     item.create.columns = [:name, :email, :tel, :news]
     item.update.columns = [:name, :email, :tel, :news]
   end
end

