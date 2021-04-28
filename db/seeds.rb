user1 = User.create(:user_name => "skittles123", :password => "iluvskittles", :email => "skittles123@gmail.com")

currency1 = Currency.create(:currency_name => "Auric Cells", :amount => 9500)

class API < ActiveRecord::Base
   
    
    def self.get_info
        killer_info = HTTParty.get("https://dbd-api.herokuapp.com/killers")

        survivor_info = HTTParty.get("https://dbd-api.herokuapp.com/survivors")
    end
    def killer_info
        killer_info.each do |data|
                Killer.new(data["name"], 
                        data["realm"], 
                        data["power"], 
                        data ["weapon"], 
                        data["speed"])    
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
