require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/rps.rb')
also_reload('./models/*')

# get '/rock/scissors' do
#    "rock wins"
# end
#
# get '/scissors/paper' do
#    "scissors wins"
# end
#
# get '/paper/rock' do
#    "paper wins"
# end

get '/check_win/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @game = RPSGame.check_win(hand1, hand2)
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end
