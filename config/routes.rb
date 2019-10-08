Rails.application.routes.draw do
  resources :topics, only: [:index, :show]

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root to: 'pages#home'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  resources :portfolios, except: [:show]
  #DEMONSTRATION REMOVE AT END OF PROJECT
  get 'angular-items', to: 'portfolios#angular'
  #######################################
  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
