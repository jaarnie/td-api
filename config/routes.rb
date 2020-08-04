Rails.application.routes.draw do

  post 'auth/login', to: 'authentication#authenticate'
  
  namespace :api do
    namespace :v1 do
      resources :therapists
      resources :entries
      resources :users

      post 'signup', to: 'users#create'
      get 'profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
