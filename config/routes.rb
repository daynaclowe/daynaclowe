Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :comments
  end

  resources "contacts", only: [:new, :create]

  root "pages#about"
  get 'portfolio', to: 'pages#portfolio'
end
