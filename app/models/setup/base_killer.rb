class BaseKiller < ActiveRecord::Base
    belongs_to :killer
    has_many :perks
    
    @@killers = []
    
    def initialize
        @killer_name = killer_name
        @realm = realm
        @power = power
        @weapon= weapon
        @speed = speed
        @terror_radius = terror_radius
        @height = height
        @difficulty = difficulty
        @overview = overview
        @lore = lore
        @dlc = dlc
        @base_perks = base_perks
        @@killer << self
    end
    end