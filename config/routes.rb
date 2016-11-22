Rails.application.routes.draw do
  resources :albums, only: [:index]
  root 'album#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
