Rails.application.routes.draw do
  resources :blogs
  resources :products, path: 'merch'
  resources :shows do 
    collection do
      delete :delete_multiple
    end
  end

  get 'albums', to: 'products#albums'
  get 'eps', to: 'products#eps'
  get 'other', to: 'products#other'

  get 'contact', to: 'pages#contact'
  get 'links', to: 'pages#links'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
