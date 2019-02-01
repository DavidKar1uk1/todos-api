Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :todos
  root 'todo#welcome'
  # Route for receiving the JSON response and params
  post '/parse', to: 'todo#receive'
  # Route for the Webhook Subscription
  post '/subscription', to: 'todo#subscribe'
end
