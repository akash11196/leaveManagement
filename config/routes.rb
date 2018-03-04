Rails.application.routes.draw do
  get 'sessions/new'

  root 'users#new'
  get 'static_pages/home'
  get  '/signup',  to: 'users#new'
  get   '/users/:id', to:'users#show'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/showLeaves',  to: 'leaves#show'
  patch 'leaves/:id', to: 'leaves#update'
  resources :users 
  resources :leaves
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
