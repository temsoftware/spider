class VehicleDetailsController < ApplicationController

  layout "ricar"

  skip_before_filter :authenticate

  def show
      @vehicle = Vehicle.find params[:id]
  end

end

