#CLI Controller responsible for user interactions
class HeroBattles::CLI

    def run
        system("clear")
        @user_input = nil
        @api = APIService.new
        @userhero = nil
        @enemyhero = nil
        welcome
    
        until @user_input == "5"
          main_menu
        end
        goodbye
      end

    def welcome
        puts "Welcome to the Superhero Battleground".colorize(:blue)
    end

    def goodbye
        puts "Goodbye, go save the world!"
    end

    def main_menu
        puts "\n"
        puts "What would you like to do?"
        puts "1. Search for a Hero"
        puts "2. Change Your Hero"
        puts "3. Learn about Hero"
        puts "4. Battle a Different Hero"
        puts "5. Exit"
    
        @user_input = gets.chomp
    
        if @user_input == "1"
          search_for_hero
        elsif @user_input == "2"
    
         make_hero_user
        elsif @user_input == "3"
    
          learn_about_user
        elsif @user_input == "4"
            menu_for_battle
    
        elsif @user_input == "5"
          exit
        else
          puts "Invalid input".colorize(:red)
        end
    end

    def search_for_hero
        print "What hero would you like to search for? "
        input = gets.chomp
        hero = @api.get_hero_by_name(input)
        if hero != "No hero like that exists"
        hero.printnicely
        else
          puts hero.colorize(:red)
        end
    end

    def make_hero_user
        print "What hero would you like to become?"
        input = gets.chomp
        hero = @api.get_hero_by_name(input)
        if hero !="No hero like that exists"
            @userhero = hero
            heroname = @userhero.name
            puts "Your hero is now #{heroname}"
        else
            puts hero.colorize(:red)
        end
    end

    def make_enemy_user
        print "What hero would you like to battle?"
        input = gets.chomp
            hero = @api.get_hero_by_name(input)
            if input.downcase == @userhero.name.downcase
                puts "You can't fight yourself".colorize(:red)
                @enemyhero = nil
                make_enemy_user
            elsif hero !="No hero like that exists"
                @enemyhero = hero
                heroname = @enemyhero.name
                puts "You have chosen #{@enemyhero.name}."
            else
                puts hero.colorize(:red)
            end
    end

    def learn_about_user
        if @userhero != nil
        @userhero.printnicely
        else
          puts "You must pick a hero first"
        end
    end

    def menu_for_battle
      if @userhero != nil
        make_enemy_user
        if (@enemyhero != "No hero like that exists") 
            puts "\n"
            puts "Are you ready to battle?"
            puts "Yes"
             puts "No"
            input2 = gets.chomp
            if input2.downcase == "yes"
                battle
            elsif input2.downcase == "no"
                puts "Coward.".colorize(:red)
            else 
                puts "I didn't understand that."
            end
          end
        else 
            puts "\n"
          puts "You need to pick a hero first".colorize(:red)
        end
    end

    def battle
        @enemyheropoints = 0
        @userheropoints = 0
        test_attribute(:intelligence)
        test_attribute(:strength)
        test_attribute(:speed)
        test_attribute(:durability)
        test_attribute(:power)
        test_attribute(:combat)

        if @enemyheropoints > @userheropoints
            puts "#{@enemyhero.name} has defeated you!".colorize(:red)
        elsif @userheropoints > @enemyheropoints
            puts "#{@userhero.name} has won the battle! Hooray!".colorize(:blue)
        elsif @userheropoints == @enemyheropoints
           puts "Our heroes are evenly matched...maybe they should fight together, not each other...".colorize(:green)
        end
    end
   
    def test_attribute(attribute)   
        if @enemyhero.send(attribute).to_i > @userhero.send(attribute).to_i
            @enemyheropoints += 1
        elsif @enemyhero.send(attribute).to_i < @userhero.send(attribute).to_i
            @userheropoints += 1
        end 
    end

end