class UsersController < ApplicationController

get '/users/:id' do
    
    @user = User.find_by(session[:user_id])
   
    # @currencies << Currency.find_by(:user_id => session[:user_id])
    @killer = Killer.find(1)
    @survivor = Survivor.find(1)
    
    erb :'/users/index'
end


patch '/users/:id/edit' do
end

delete 'users/:id/delete' do
end


end