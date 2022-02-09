require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

# get '/' do
# "Testing infrastructure working"
# end

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  session[:player1] = params[:player1]
  session[:player2] = params[:player2]
  redirect '/play'
end

get '/play' do
  @player1 = session[:player1]
  @player2 = session[:player2]
  erb :play
end

  # our routes would go here

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end