Rails.application.routes.draw do
  resources :portfolios
  resources :blogs
  
  get 'pages/about'
  get 'pages/contact'
  resources :guides
  resources :guids
  
  root to: "pages#home"
end
