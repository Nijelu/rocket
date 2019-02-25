Rails.application.routes.draw do
  resources :rockets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'rockets#index'
  get '/launch', to: 'rockets#launch', as: :launch
end
