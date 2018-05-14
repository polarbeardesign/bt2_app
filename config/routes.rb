Rails.application.routes.draw do
  resources :contents
  resources :events
  resources :assignments
  resources :grants
  resources :roles
  resources :rights
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "contents#show", :id => 1

end
