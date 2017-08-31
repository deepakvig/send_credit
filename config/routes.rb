Rails.application.routes.draw do

  root 'home#index'
  devise_for :users
  resources :credit_transactions, only: [:create, :index]

  namespace :api do
    namespace :v1 do
      get 'users/current', to: 'users#show'
    end
  end

end
