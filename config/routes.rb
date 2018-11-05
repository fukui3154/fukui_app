Rails.application.routes.draw do


  get "posts/index" => "posts#index"
  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "about" => "home#about"
  get "posts/new" => "posts#new"


  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"


end
