class UsersController < ApplicationController

get '/users/:id' do
    @user = User.find(params[:id])
    erb :'/users/index'
end

get '/users/:id/killers/:id'
    @user = User.find(params[:id])
    erb :'/users/show/killers'

patch '/users/:id/edit' do
end

delete 'users/:id/delete' do
end


end