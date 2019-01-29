Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :todos
  # Route for receiving the JSON response and params
  post '/parse', to: 'todos#receive'
  # post 'auth/login', to: 'authentication#authenticate'
  # Route for the Webhook Subscription
  post '/subscription', to: 'todos#subscribe'
end
