Rails.application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/', as: 'rails_admin'

  root 'dashboard#index'

  resources :tips, only: [:index, :show]

  resources :categories , only: [:index, :show] do
    member do
      get '/tips', to: "categories#set_tip"
    end
  end

  resources :tip_images, only: [:index, :show]

 # resources :zone_families

  resources :zones

  get '/zone_families', to: "zones#get_families"

  get '/family_info', to: "families#get_name"


end
