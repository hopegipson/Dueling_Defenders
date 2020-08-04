class Hero
    attr_reader :name, :alteregos, :aliases, :fullname, :intelligence, :strength, :speed, :durability, :power, :combat
    @@all = []
    
    
    def initialize(hero_data)
        @name = hero_data["name"]
        @fullname = hero_data["biography"]["full-name"]
        @alteregos = hero_data["biography"]["alter-egos"]
        @aliases = hero_data["biography"]["aliases"]
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
        puts @name.colorize(:blue)
        puts "\n"
        puts "Real Name:"
        puts @fullname
        puts "\n"
        puts "Alter-Egos:"
        puts @alteregos
        puts "\n"
        puts "Aliases:"
        puts @aliases
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

