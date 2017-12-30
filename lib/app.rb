require "sinatra/base"
require_relative "tile"
require_relative "game"

class Tilegame < Sinatra::Base
  enable :sessions
  @game = Game.create

  before do
    @game = Game.instance
  end

  get '/home' do
    @turn_number = @game.turn
    erb(:home)
  end

  post '/home' do
    @game.starting_tile(params[:tile])
    @game.endturn
    redirect '/home'
  end


  run! if app_file == $0

end
