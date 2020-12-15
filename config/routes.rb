Rails.application.routes.draw do
  resources :blogs
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :guides
  resources :guids
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end