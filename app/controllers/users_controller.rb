class UsersController < ApplicationController
  layout "admin"

  active_scaffold :user do |item|
    item.label = "Usuário"
    item.columns = [:name, :login, :active, :pass, :created_at]
    item.columns[:name].label = "Nome"
    item.columns[:login].label = "Login"
    item.columns[:active].label = "Ativo"
    item.columns[:profile].form_ui = :select
    item.columns[:profile].label = "Perfil"
    item.columns[:created_at].label = "Criado em"

    item.update.columns = [:name, :login, :active, :pass, :profile]
    item.create.columns = [:name, :login, :active, :pass, :profile]

    item.actions.exclude :show
  end
end
