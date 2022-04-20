Rails.application.routes.draw do

  
  root "login#index"
  
  get "/alunos", to: "students#index"
  get 'home/index', to: "home#index"


  resources :login, only: [:index]
  resources :home, olny: [:index]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
