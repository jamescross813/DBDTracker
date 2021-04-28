class Survivor < ActiveRecord::Base
    has_many :perks, through: :survivor_perks
    has_many :users, through: :user_survivors
    belongs_to :user_survivors
    belongs_to :survivor_perks

    attr_accessor :name, :realm, :power, :weapon, :speed, :terror_radius, :height, :difficulty, :overview, :lore, :dlc, :perks

    @@all_survivors = []

    def initialize (name, role, overview, lore, difficulty, dlc, perks)
        @name = name
        @role= role
        @overview = overview 
        @lore = lore 
        @difficulty = difficulty 
        @dlc = dlc 
        @perks = perks
        @@all_survivors << self
    end
end