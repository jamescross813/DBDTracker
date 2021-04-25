class API < ActiveRecord::Base
   
    
    def self.get_info
        killer_info = HTTParty.get("https://dbd-api.herokuapp.com/killers")

        survivor_info = HTTParty.get("https://dbd-api.herokuapp.com/survivors")
    end
    def killer_info
        killer_info.each do |data|
                Killer.new(data["title"], 
                        data["genre"], 
                        data["short_description"], 
                        data ["release_date"], 
                        data["game_url"])    
        end   

    end

    def survivor_info
        survivor_info.each do |data|
                Killer.new(data["title"], 
                        data["genre"], 
                        data["short_description"], 
                        data ["release_date"], 
                        data["game_url"])    
        end   

    end


end