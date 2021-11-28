Rails.application.routes.draw do
  root 'developers#index'
  resources :developers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
