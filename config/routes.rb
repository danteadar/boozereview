Rails.application.routes.draw do


  get 'beers/index' => 'beers#index'
  get 'beers/new' => 'beers#new'
  post 'beers/create' => 'beers#create'
  get 'beers/show/:id' => 'beers#show'

  get 'signup/' => 'users#new'
  post 'users/' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  get '/contact' => 'users#contact'

  root to: "beers#index"
  resources :reviews

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  namespace :api do
    namespace :v1 do
      resources :reviews
      get "/beers" => "beers#index"
      get "/beers/:name" => "beers#find_by_name"
      # get "/reviews/:api_beer_id" => "reviews#find_by_name"

    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
