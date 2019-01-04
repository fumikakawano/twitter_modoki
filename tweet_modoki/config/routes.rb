Rails.application.routes.draw do
  resources :tweets

  get 'likes/index'
  get 'users/index'
end
