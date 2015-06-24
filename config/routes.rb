Rails.application.routes.draw do
  get 'signup' => 'user#new', as: :sign_up

  post 'signup' => 'user#create', as: :users

  get 'user/show' => 'user#show', as: :user

  get 'signin' => 'sessions#new', as: :sign_in

  post 'signin' => 'sessions#create', as: :auth

  get 'signout' => 'sessions#delete', as: :sign_out

  get 'wall' => 'pins#wall', as: :wall

  root 'pins#home'
end
