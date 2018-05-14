Rails.application.routes.draw do
  resources :contents
  resources :events
  resources :assignments
  resources :grants
  resources :roles
  resources :rights
#  devise_for :users
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "contents#show", :id => 1

end
