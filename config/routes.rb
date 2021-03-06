Rails.application.routes.draw do

  root to: 'static_pages#home'
  #get 'static_pages/home', as: :home
  match '/home', to:'static_pages#home', via:[:get, :post]
  match '/help', to:'static_pages#help', via:[:get, :post]
  match '/contact', to:'static_pages#contact', via:[:get, :post]
  match '/sign_up', to:'users#new', via:[:get, :post]

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
