require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game_logic')
also_reload('.models/*')

get '/play_game/:player1/:player2' do
  game_logic = GameLogic.new(params[:player1].capitalize, params[:player2].capitalize)
  return "#{game_logic.play_game()}"
end
