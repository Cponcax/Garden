Rails.application.routes.draw do
  devise_for :users 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :tips, only: [:index, :show]

  resources :categories , only: [:index, :show] do 
    member do 
      get '/tips', to: "categories#set_tip"
    end
  end

  resources :tip_images, only: [:index, :show]

end
