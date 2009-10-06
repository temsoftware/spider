class HomeController < ApplicationController
  skip_before_filter :authenticate

  layout "ricar"

  def index
    @cars       = Vehicle.carros
    @bikes      = Vehicle.motos
  end
end

