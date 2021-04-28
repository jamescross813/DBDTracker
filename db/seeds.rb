user1 = User.create(:user_name => "jamescross", :password_digest => "skittles813")

currency1 = Currency.create(:currency_name => "Auric Cells", :amount => 9500)
  
   
   
        killer_info = HTTParty.get("https://dbd-api.herokuapp.com/killers")

        survivor_info = HTTParty.get("https://dbd-api.herokuapp.com/survivors")
   

   
        killer_info.each do |data|
                Killer.create!(data["name"], 
                    binding.pry
                        data["realm"], 
                        data["power"], 
                        data ["weapon"], 
                        data["speed"],
                        data["terror_radius"],
                        data["height"],
                        data["difficulty"],
                        data["overview"],
                        data["lore"],
                        data["dlc"],
                        data["perks"])    
                        binding.pry
                end
        
        survivor_info.each do |data|
                Survivor.create!(data["name"], 
                        data["role"], 
                        data["overview"], 
                        data ["lore"], 
                        data["difficulty"],
                        data["dlc"],
                        data["perks"])  
                end  
      


