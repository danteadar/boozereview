Rails.application.routes.draw do


  get 'beers/index' => 'beers#index'
  get 'beers/new' => 'beers#new'
  post 'beers/create' => 'beers#create'
  get 'beers/show/:id' => 'beers#show'

  get 'signup/' => 'users#new'
  post 'users/' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'

  root to: "beers#index"
  resources :reviews

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
