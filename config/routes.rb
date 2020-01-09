Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts do
  # resources :home
  # resources :users, only: [:index, :show, :edit, update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


devise_for :users

  root to: "home#index"

  post "posts/creat" => "posts#new"

  get "posts/:id" => "posts#show"

  get "plamo" => "home#plamo"

  get "plamo_details" => "home#plamo_details"

  get "toy" => "home#toy"

  get "toy_details" => "home#toy_details"

  get "train_model" => "home#train_model"

  get "train_model_details" => "home#train_model_details"

  get "model_gun" => "home#model_gun"

  get "model_gun_details" => "home#model_gun_details"

  get "other" => "home#other"

  get "other_details" => "home#other_details"

end
