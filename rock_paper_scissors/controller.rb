require ('sinatra')
require ('sinatra/contrib/all')
require_relative('./models/rock_paper')

get '/' do
  erb(:home)
end

get '/instructions' do
  erb(:instructions)
end

get '/:player1/:player2' do
  rps = Rock_Paper_Scissors.new(params[:player1], params[:player2])
  rps.play
  return "Player 2 Wins!"
end
