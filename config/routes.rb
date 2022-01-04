Rails.application.routes.draw do
  devise_for :users
  root 'teams#index'

  resources :users do
    resources :teams
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index]
    end
  end
end
