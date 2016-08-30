Rails.application.routes.draw do

  root 'home#index'

  resources :buckets do
    resources :lists
  end


  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
end
