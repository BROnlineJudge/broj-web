Rails.application.routes.draw do
  resources :submissions
  resources :contests
  devise_for :users, path: '/', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'new'
  }

  resources :problems
  post 'contests/:contest_id/register' => 'contests#register', :as => :register_contest

  root to: 'home_page#index'
end
