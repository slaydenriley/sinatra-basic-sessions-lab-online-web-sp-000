require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "G+cd4)Lm7N:?w2w"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    params << :sessions
  end
  
end
