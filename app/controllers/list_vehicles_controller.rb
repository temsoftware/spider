class ListVehiclesController < ApplicationController
  skip_before_filter :authenticate

  layout "ricar"

  def index

  end

  def show

    page = params[:page] || 1

    @vehicles =  Vehicle.paginate :conditions => ["type_vehicle_id=?",params[:id]], :page => page , :per_page => 10

  end
end

