Rails.application.routes.draw do
  resources :shows
  resources :blogs
  resources :products, path: 'merch'

  get 'contact', to: 'pages#contact'
  get 'links', to: 'pages#links'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
