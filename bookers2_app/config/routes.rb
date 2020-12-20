Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#top'
  get "home/about" => "home#about"
  resources :books, only: [:create,:edit,:update,:index,:show,:destroy]
  resources :users, only: [:show,:edit,:update,:index]
end
