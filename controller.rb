require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')
also_reload('.models/*')


get '/home' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end

get '/round/:hand1/:hand2' do
@status  = RPSGame.check_win(params[:hand1], params[:hand2])
erb(:result)
end
