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

  get "toy" => "home#toy"

  get "train_model" => "home#train_model"

  get "model_gun" => "home#model_gun"

  get "other" => "home#other"

end
