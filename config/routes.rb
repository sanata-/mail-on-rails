Rails.application.routes.draw do
  get 'static/index'
  get 'static/about'

  root to: 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
