require "sinatra/base"
require_relative "tiles"
require_relative "ruby_file_2"

class Tilegame < Sinatra::Base
  enable :sessions

  get '/home' do
    erb(:start)
  end

  post '/home' do
    session[:tile] = params[:tile]
    p session[:tile]
    redirect '/home'
  end

  run! if app_file == $0

end
