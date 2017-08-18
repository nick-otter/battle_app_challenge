require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect '/play'
    # save_and_open_page
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    $player1.receive_damage
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
