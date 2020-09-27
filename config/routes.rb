Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root 'welcome#index'
  match '/game/start-game' => 'game#start_game', via: [:get, :post]
  match '/game/start-computer-game' => 'game#start_game_with_computer', via: [:get, :post]
end
