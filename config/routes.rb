Rails.application.routes.draw do
  
  get "pages/hola"
  get '/posts', to: 'posts#index'
  get '/hola', to: 'pages#hola'

  resources :tasks, only: [:index, :show, :new, :create]
  
  resources :articles do 
    resources :comments
  end

  get '/about', to: 'pages#about'
  root 'tasks#index'
end
