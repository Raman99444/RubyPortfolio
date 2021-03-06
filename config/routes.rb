Rails.application.routes.draw do
  resources :portfolios, excep: [:show]
  get 'angular-item', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :guides
  resources :guids
  
  root to: 'pages#home'
end
