Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chats#index'

  devise_for :users, controllers: {omniauth_callbacks: 'user/omniauth_callbacks'}
  resources :chats do
    resources :comments
  end

end
