Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get "plamo" => "home#plamo"

  get "toy" => "home#toy"

  get "car_model" => "home#car_model"

  get "model_gun" => "home#model_gun"

  get "other" => "home#other"

end
