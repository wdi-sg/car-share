Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cars#index"
  
  resources :cars do
    resources :slots
  end
  
  resources :slots do
    resources :cars
  end
end
