Rails.application.routes.draw do
  resources :portfolios, excep: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :guides
  resources :guids
  
  root to: 'pages#home'
end
