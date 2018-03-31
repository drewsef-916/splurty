Rails.application.routes.draw do
  root 'quotes#index'
  resources :quotes
  get 'about', to: 'quotes#about'
  get 'contact_me', to: 'emails#contact_me'
  resources :emails
end
