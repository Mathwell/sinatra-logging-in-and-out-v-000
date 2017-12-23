require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    puts params
    @user=User.find_by(username: params["username"], password: params["password"])
    @user=User.new(username: params["username"], password: params["password"])
    session[:id]=@user.id
    if Helper.is_logged_in?(session)
      erb:account
    else
      erb:error
    end
  end

  get '/account' do

  end

  get '/logout' do
    session.clear
    erb :index
  end


end
