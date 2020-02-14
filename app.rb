require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "G+cd4)Lm7N:?w2w"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    params[:item] << session
  end

end
