class OptionsController < ApplicationController
  layout "admin"

  active_scaffold :option do |item|
    item.label = "Opcionáis"
    item.columns = [:description, :created_at]
    item.columns[:description].label = "Descrição"
    item.columns[:created_at].label = "Criado em"

    item.actions.exclude :show
  end
end
