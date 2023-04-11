Rails.application.routes.draw do
  root to:'homes#top'
  devise_for :users

  get "homes/master"=>"homes#master" ,as: "master"
  get "homes/user"=>"homes#user", as: "user"
  get "homes/example"=>"homes#example" , as: "example"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
