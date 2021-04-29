require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

    configure do
            set :views, "app/views"
            enable :sessions
            set :session_secret, "password_security"
    end
  
    get '/' do
        erb :index
    end

    get '/registrations/signup' do
        erb :'/registrations/signup'
    end

    post '/registrations/signup' do 
        @user = User.new(params)
        session[:user_id] = @user.id
        if @user.save
            redirect "/users/#{@user.id}"
          else
            redirect '/failure'
          end
    end

    get '/users/:id' do
      
        @user = User.find(params[:id])
        erb :'/users/show'
    end

    get '/faliure' do
        erb :failure
    end

    get '/login' do
        erb :'/sessions/login'
    end
end