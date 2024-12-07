Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

<<<<<<< HEAD
  root 'pages#home'
  get "/plants", to: "plants#index", as: :plants
  get "/plants/:id", to: 'plants#show', as: :plant
=======
  # get "/plants", to: "plants#index", as: :plants
  # get "/plants/:id", to: 'plants#show', as: :plant
  # get "/plants/new", to: 'plants#new', as: :new_plant
  # post "/plants/create", to: "plants#create", as: :create_plant

  resources :plants, only: %i[index show new create]
>>>>>>> 71aa2c3148f3fba2fc76a6459f4a4b46870ef195

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
