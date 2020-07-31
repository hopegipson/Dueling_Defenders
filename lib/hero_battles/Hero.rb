class Hero
    #what if a character has nil intelligence?
    attr_reader :name, :intelligence, :strength, :speed, :durability, :power, :combat
    @@all = []
    
    def initialize(hero_data)
        @name = hero_data["name"]
        #do this for all attributes
        #if hero_data["powerstats"]["intelligence"] != nil
        #@intelligence = hero_data["powerstats"]["intelligence"]
        #else
         #   @intelligence = 0
        @intelligence = hero_data["powerstats"]["intelligence"]
        @strength = hero_data["powerstats"]["strength"]
        @speed = hero_data["powerstats"]["speed"]
        @durability = hero_data["powerstats"]["durability"]
        @power = hero_data["powerstats"]["power"]
        @combat = hero_data["powerstats"]["combat"]
    
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def self.find_by_name(name)
        @@all.find { |hero| hero.name.downcase == name.downcase }
      end
    
    
    def printnicely
        puts @name 
        puts "\n"
        puts "Stats:"
        puts "Intelligence: #{@intelligence}"
        puts "Strength: #{@strength}"
        puts "Speed: #{@speed}"
        puts "Durability: #{@durability}"
        puts "Power: #{@power}"
        puts "Combat #{@combat}"
        puts "\n"
        end
    
    end