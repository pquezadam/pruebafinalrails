Rails.application.routes.draw do 
  resources :todos, only: :index do
  resources :completeds, only: :create
  end

  root to: "todos#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
