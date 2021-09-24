Rails.application.routes.draw do
root to: 'pages#home'
  get '/thanks', to: 'pages#thanks'
  get '/associations', to: 'pages#associations'
  get '/trabaja', to: 'pages#trabaja'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :allotments, only: [:index, :show] do
    resources :offers, only: [:index, :show] do
      resources :purchases, only: [:create]
      resources :coupons, only: [:show]
    end
  end
  # resources :offers, only: [:show] do
  #   resources :purchases, only: [:create]
  # end
  resources :messages, only: [ :new, :create ]
end
