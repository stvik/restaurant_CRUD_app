Rails.application.routes.draw do
  
get '/home', to: 'customers#home', as: "home"
  resources :orders
  resources :menu_items
  resources :customers

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
