Rails.application.routes.draw do
  root to: 'pages#home'
  get 'dashboard', to: "pages#dashboard", as: :dashboard
  get 'search', to: "carparks#search", as: :search
  resources :bookings
  resources :carparks do
    resources :reviews, only: [:new, :create, :index]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
