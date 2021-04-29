class SurvivorsController < ApplicationController

get '/survivors' do
    
    @survivors = Survivor.all
    erb :'/survivors/index'
end

post'/survivors/new' do

end

get '/survivors/:id' do 
    # binding.pry
    @survivor = Survivor.find(params[:id])
    erb :'/survivors/show'
end

patch '/survivors/:id/edit' do
end

delete '/survivors/:id/delete' do
end
end