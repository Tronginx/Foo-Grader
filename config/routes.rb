Rails.application.routes.draw do
  resources :peer_evaluations
  resources :peer_comments
  resources :presentations
  devise_for :users
  resources :students
  root 'home#index'
  get 'home/aboutTeam1'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
