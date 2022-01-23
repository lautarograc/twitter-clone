Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations", omniauth_callbacks: "omniauth"}
  resources :tweets
  # For details on the DSL
  # available within this file, see 
  #https://guides.rubyonrails.org/routing.html

  root "tweets#index"
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  resources :users
  
end
