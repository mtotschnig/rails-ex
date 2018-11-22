Rails.application.routes.draw do
  resources :members
  resources :communities
  post :transactions, controller: 'transactions'
  match 'members/:id/reward' => 'members#reward', via: [:get], as: :members_reward
  match 'members/:id/donate' => 'members#donate', via: [:get], as: :members_donate
  match 'members/:id/exchange' => 'members#exchange', via: [:get], as: :members_exchange
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
