class AddressController < ApplicationController

  skip_before_filter :authenticate

  layout "ricar"

  def show

    @stores = Store.all

    @selected_store = Store.find params[:id].to_i

  end

end

