Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :contacts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts do
  # resources :home
  # resources :users, only: [:index, :show, :edit, update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end


devise_for :users

  root to: "home#index"

  post "posts/creat" => "posts#new"

  get "posts/:id" => "posts#show"

  get "plamo" => "home#plamo"

  get "plamo_details/:id" => "home#plamo_details", as: 'plamo_details'

  get "toy" => "home#toy"

  get "toy_details/:id" => "home#toy_details", as: 'toy_details'

  get "train_model" => "home#train_model"

  get "train_model_details/:id" => "home#train_model_details", as: 'train_model_details'

  get "model_gun" => "home#model_gun"

  get "model_gun_details/:id" => "home#model_gun_details", as: 'model_gun_details'

  get "other" => "home#other"

  get "other_details/:id" => "home#other_details", as: 'other_details'

end
