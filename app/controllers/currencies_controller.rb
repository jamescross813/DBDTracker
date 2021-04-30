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
        @currency = currency.find(params[:id])
        @currency.update(params["currency"])
        if !params["User"]["name"].empty?
          @currency.User = User.create(name: params["User"]["name"])
        end
        @currency.save
      redirect  "currencies/#{@currency.id}"
    end
    
    delete '/currencies/:id/delete' do
        @currency = Currency.find_by_id(params)
        @currency.delete
        redirect to "/user/:id"
    end
    end