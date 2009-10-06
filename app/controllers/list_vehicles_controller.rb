class ListVehiclesController < ApplicationController
  skip_before_filter :authenticate

  layout "ricar"

  def index

  end

  def show
    @vehicles = Vehicle.lista params[:id]
  end
end

