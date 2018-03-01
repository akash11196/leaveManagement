Rails.application.routes.draw do
  get 'static_pages/home'
  get  '/signup',  to: 'users#new'
  get   '/users/:id', to:'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
