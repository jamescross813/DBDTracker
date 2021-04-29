KillerController << ApplicationController

get '/killers' do
    erb :index
end

post'/killers/new' do

end

get 'killers/:id/' do 
    erb :show
end

patch '/killers/:id/edit' do
end

delete 'killers/:id/delete' do
end
end