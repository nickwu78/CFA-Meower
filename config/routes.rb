Rails.application.routes.draw do
  resources :posts do
    member do
      get 'toggle_follow', to: 'posts#toggle_follow'
      get 'toggle_like', to: 'posts#toggle_like'
    end
  end
  devise_for :users, controllers: {
             sessions: 'users/sessions',
             registrations: 'users/registrations'
             }
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
