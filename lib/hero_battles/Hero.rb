class Hero
    attr_reader :name, :alteregos, :aliases, :fullname, :intelligence, :strength, :speed, :durability, :power, :combat, :battleswon, :battleslost
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
        @battleswon = 0
        @battleslost = 0
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def self.find_by_name(name)
        self.all.detect { |hero| hero.name.downcase == name.downcase }
      end

    def self.create(name)
        APIService.new.get_hero_by_name(name)
     end

    def self.find_or_create_by_name(name)
        find_by_name(name) || create(name)
    end

    def winabattle
        @battleswon += 1
    end

    def loseabattle
        @battleslost += 1
    end
    
    def printnicely
        puts "\n"
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

