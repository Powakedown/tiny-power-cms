Rails.application.routes.draw do
  get "sections/new"
  root "pages#home"

  # Authentication routes
  get "session", to: "sessions#new"
  post "sessions", to: "sessions#create"
  delete "sessions", to: "sessions#destroy"

  # CMS admin routes
  get "section_layouts", to: "section_layouts#index", as: :section_layouts
  delete "section_layout", to: "section_layouts#destroy"

  resources :sections, only: [:new]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
