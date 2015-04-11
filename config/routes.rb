Rails.application.routes.draw do
  get '/dice', to: 'dice#show_dice'

  post '/dice', to: 'dice#roll'

  get '/show-roll', to: "dice#show_roll"
end
