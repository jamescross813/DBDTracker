class KillersController < ApplicationController

get '/killers' do
#   binding.pry
    @killers = Killer.all
    erb :'/killers/index'
end

post'/killers/new' do

end

get '/killers/:id/' do 
    @killer = killer.find(params[:id])
    erb :'/killers/show'
end

patch '/killers/:id/edit' do
end

delete '/killers/:id/delete' do
end
end