Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/merchants', to: 'merchants#index'
  get "/merchants/:id", to: "merchants#show"
  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
end
