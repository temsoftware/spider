ActionController::Routing::Routes.draw do |map|
  map.root :controller => "sessions", :action => "new"

  map.resources :sessions
  map.resources :anuncios
  map.resources :main
  map.resources :profiles,      :active_scaffold => true
  map.resources :users,         :active_scaffold => true
  map.resources :brands,        :active_scaffold => true
  map.resources :cars,          :active_scaffold => true
  map.resources :colors,        :active_scaffold => true
  map.resources :fuels,         :active_scaffold => true
  map.resources :gears,         :active_scaffold => true
  map.resources :type_vehicles, :active_scaffold => true
  map.resources :options,       :active_scaffold => true
  map.resources :vehicles,      :active_scaffold => true
  map.resources :partners,      :active_scaffold => true
  map.resources :stores,        :active_scaffold => true
  map.resources :costumers,     :active_scaffold => true
  map.resources :home
  map.resources :list_vehicles
  map.resources :vehicle_details
  map.resources :contacts
  map.resources :address


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

