LastCall::Application.routes.draw do
  get "alerts/index"
  get "locations/index"
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "location", to: "locations#index", as: "location"
  get "alerts", to: "alerts#index", as: "alerts"
    
  devise_for :users
  resources :inside
  resources :pages

  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
end
