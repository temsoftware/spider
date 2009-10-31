class HomeController < ApplicationController
  skip_before_filter :authenticate

  layout "ricar"

  def index
    @cars     = Vehicle.lista 1
    @bikes    = Vehicle.lista 3
    @stores   = Store.all
    @partners = Partner.parceiros
  end
end

