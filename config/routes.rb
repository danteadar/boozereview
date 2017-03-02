Rails.application.routes.draw do

  get 'users/show'

  get 'signup/' => 'users#new'

  post 'users/' => 'users#create'

  get 'users/edit'

  patch 'users/update'

  get 'users/destroy'

  root to: "reviews#index"
  resources :reviews

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
