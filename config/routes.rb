Rails.application.routes.draw do


  root 'static_pages#index'
  #root 'events#index'
  
  resources :events, only:[:new, :create, :index]
  resources :static_pages, only:[:index, :secret]
  #resources :users

  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
