require_relative '../../config/environment'

class ApplicationController < Sinatra::Base


    enable :sessions

    configure do
        set :views, 'app/views'
    end
  
    get '/' do
        erb :index
    end

    get '/registrations/signup' do
        erb :'/registrations/signup'
    end

    post '/registrations' do 
    
    end
end