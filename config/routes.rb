Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: {
             sessions: 'users/sessions',
             registrations: 'users/registrations'
             }
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
