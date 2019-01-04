Rails.application.routes.draw do
  devise_for :users
  get 'login' => "users#login_form"
  post 'login' => "users#login"

  resources :tweets

  get 'likes/index'
  get 'users/index'
end
