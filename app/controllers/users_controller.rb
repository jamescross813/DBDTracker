class UsersController < ApplicationController

get '/users' do
    erb :index
end

post'/users/new' do

end

get 'users/:id/' do 
    erb :show
end

patch '/users/:id/edit' do
end

delete 'users/:id/delete' do
end


end