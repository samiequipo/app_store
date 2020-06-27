Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  resources :categories, except: [:show]
  resources :clients, except: [:show]
  resources :suppliers, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
