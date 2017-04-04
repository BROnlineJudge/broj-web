Rails.application.routes.draw do
  resources :problems
	devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'new' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home_page#index'
end
