class ProfilesController < ApplicationController
  layout "admin"

  active_scaffold :profile do |item|
    item.label = "Perfil"
    item.columns = [:description, :created_at, :updated_at]
    columns[:updated_at].label = "Editado em"
    columns[:created_at].label = "Criado em"
    columns[:description].label = "Descrição"

    item.actions.exclude :show
  end
end
