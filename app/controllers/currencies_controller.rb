CurrencyController << ApplicationController

get '/currencies' do
    erb :index
end

post'/currencies/new' do

end

get 'currencies/:id/' do 
    erb :show
end

patch '/currencies/:id/edit' do
end

delete 'currencies/:id/delete' do
end

end