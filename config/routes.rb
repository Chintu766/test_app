Rails.application.routes.draw do
  resources :articles
  resources :chintus , only: [:show, :index, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#get 'hello', to:'application#hello'
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#about'
  get 'about',to: 'pages#about'
  get 'sai',to: 'chintus#chintu'
end
