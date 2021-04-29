SurvivorController << ApplicationController

get '/survivors' do
    erb :index
end

post'/survivors/new' do

end

get 'survivors/:id/' do 
    erb :show
end

patch '/survivors/:id/edit' do
end

delete 'survivors/:id/delete' do
end
end