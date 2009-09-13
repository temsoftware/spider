ActionController::Routing::Routes.draw do |map|
  map.root :controller => "sessions", :action => "new"

  map.resources :sessions
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

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
