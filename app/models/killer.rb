class Killer < ActiveRecord::Base
    has_many :perks, through: :killer_perks
    has_many :users, through: :user_killers
    belongs_to :killer_perks
    belongs_to :user_killers

    attr_accessor :name, :realm, :power, :weapon, :speed, :terror_radius, :height, :difficulty, :overview, :lore, :dlc, :perks

    @@all_killers = []

    def initialize (name, realm, power, weapon, speed, terror_radius, height, difficulty, overview, lore, dlc, perks)
        @name = name
        @realm = realm 
        @power = power 
        @weapon = weapon 
        @speed = speed 
        @terror_radius = terror_radius 
        @height = height 
        @difficulty = difficulty 
        @overview = overview 
        @lore = lore 
        @dlc = dlc 
        @perks = perks
        @@all_killers << self
    end
        
end