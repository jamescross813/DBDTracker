class Killer < ActiveRecord::Base
    has_many :perks, through: :killer_perks
    has_many :users, through: :user_killers
    belongs_to :killer_perks
    belongs_to :user_killers

    

    
        
end