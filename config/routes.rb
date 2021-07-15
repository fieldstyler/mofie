Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/albums', to: "albums#index"
  get '/albums/:id', to: "albums#show"

  get '/songs', to: "songs#index"
  get '/songs/:id', to: "songs#show"
  get '/songs/:id/lyrics', to: "lyrics#show"
end
