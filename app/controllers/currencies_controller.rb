class CurrenciesController < ApplicationController
 

    get '/currencies/new' do 
        erb :'/currencies/new'
    end
        
    
    post '/currencies' do
        @currency = Currency.create(params)
        
        @user = User.find(session[:user_id])
     
        @user.currencies = @currency
        
        
        @currency.save
        @currencies << @currency
        redirect "users/#{@user.id}"
        
    end
    
    get '/currencies/:id' do 
        @currency = Currency.find(params[:id])
        erb :'/currencies/show'
    end
    
    get '/currencies/:id/edit' do
        @currency = Currency.find(params[:id])
        erb :'/currencies/edit'
      end
    
    patch '/currencies/:id' do 
        @currency = Currency.find(params[:id])
        binding.pry
        @currency.update(params[:currency])
    end
    
    delete '/currencies/:id/delete' do
        @currency = Currency.find_by_id(params)
        @currency.delete
        redirect to "/user/:id"
    end
    end

   