Rails.application.routes.draw do
  get 'user/new', as: :sign_up

  get 'user/create', as: :users

  get 'user/show', as: :user

  get 'signin' => 'sessions#new', as: :sign_in

  get 'signin' => 'sessions#create', as: :auth

  get 'signout' => 'sessions#delete', as: :sign_out

  root 'pins#home'
end
