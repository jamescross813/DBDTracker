class CurrenciesController < ApplicationController
 

    get '/currencies/new' do 
        erb :'/currencies/new'
    end
        
    
    post '/currencies' do
       
        @currency = Currency.new(params)
       
        redirect "users/#{@user.id}"
        
    end
    
    get '/currencies/:id' do 
        @currency = Currency.find(params[:id])
        erb :'/currencies/show'
    end
    
    patch '/currencies/:id/edit' do
    end
    
    delete '/currencies/:id/delete' do
    end
    end