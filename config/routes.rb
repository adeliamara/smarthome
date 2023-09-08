Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/locations', to: 'location#index'

  patch '/locations/:location_id/deactivate-devices', to: "location#deactivate_all_devices"
  patch '/locations/:location_id/activate-devices', to: "location#activate_all_devices"
  patch '/locations/:location_id/turn-off-devices', to: "location#turn_off_all_devices"
  patch '/locations/:location_id/turn-on-devices', to: "location#turn_on_all_devices"

  get '/locations/:location_id/devices', to: "location#get_all_devices"

  # Rota para mostrar detalhes de uma localização específica
  get '/locations/:location_id', to: 'location#show'

  # Rota para excluir uma localização específica
  delete '/locations/:location_id', to: 'location#destroy'

  post '/locations', to: 'location#create'

  post '/environments', to: 'environment#create'

  get '/environments', to: 'environment#index'

  patch '/environments/:environment_id/deactivate-devices', to: "environment#deactivate_all_devices"
  patch '/environments/:environment_id/activate-devices', to: "environment#activate_all_devices"
  patch '/environments/:environment_id/turn-off-devices', to: "environment#turn_off_all_devices"
  patch '/environments/:environment_id/turn-on-devices', to: "environment#turn_on_all_devices"

  get '/environments/:environment_id/devices', to: "environment#get_all_devices"

  # Rota para mostrar detalhes de uma localização específica
  get '/environments/:environment_id', to: 'environment#show'

  # Rota para excluir uma localização específica
  delete '/environments/:environment_id', to: 'environment#destroy'


  post '/devices', to: 'device#create'

  get '/devices', to: 'device#index'

  patch '/devices/:device_id/deactivate', to: "device#deactivate"
  patch '/devices/:device_id/activate', to: "device#activate"
  patch '/devices/:device_id/turn-off', to: "device#turn_off"
  patch '/devices/:device_id/turn-on', to: "device#turn_on"

  get '/devices/:device_id', to: 'device#show'

  delete '/devices/:device_id', to: 'device#destroy'


end
