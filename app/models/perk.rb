class Perk < ActiveRecord::Base
    has_many :survivors, through: :survivor_perks
    has_many :killers, through: :killer_perks
    belongs_to :killer_perks
    belongs_to :survivor_perks

end