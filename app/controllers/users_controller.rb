class UsersController < ApplicationController

get '/users/:id' do
    @user = User.find(params[:id])
    @killer = Killer.find(1)
    @survivor = Survivor.find(1)
    erb :'/users/index'
end


patch '/users/:id/edit' do
end

delete 'users/:id/delete' do
end


end