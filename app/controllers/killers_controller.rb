class KillersController < ApplicationController

get '/killers' do
#   binding.pry
    @killers = Killer.all
    erb :'/killers/index'
end

get '/killers/new' do 
    @killers = Killer.all
    @perks = []
    Perk.all.each do |perk|
        if perk.role == "Killer"
        @perks << perk  
        end
    end
    erb :'/killers/new'
end
    

post'/killers' do
   binding.pry
    UserKiller.create(killer_id: params[:killer][:killer_id])
    
    KillerPerk.create(killer_id: params[:killer][:killer_id], perk_id: params[:killer][:perk_ids])
    
    redirect "/killers/#{@killer.id}"
end

get '/killers/:id' do 
   
    @killer = Killer.find(params[:id])
    erb :'/killers/show'
end

patch '/killers/:id/edit' do
end

delete '/killers/:id/delete' do
end
end