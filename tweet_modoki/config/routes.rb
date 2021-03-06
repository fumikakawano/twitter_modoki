Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  get 'login' => "users#login_form"
  post 'login' => "users#login"

  resources :tweets

  get 'likes/index'
  get 'users/index'
end
