Rails.application.routes.draw do
  resources :members
  resources :communities
  get 'welcome/index'
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
