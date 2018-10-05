Rails.application.routes.draw do
  devise_for :admins
  resources :event_categories
  resources :event_organizers
  resources :events
  root to: "home#index"
  get '/tagged', to: "events#tagged", as: :tagged
  namespace :admin do
    resources :event_categories
    resources :event_organizers
    resources :events
  end
end
