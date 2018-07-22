Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars do
    resources :spaces
  end
  
  resources :spaces do
    resources :cars
  end
  root to: "cars#index"
end
