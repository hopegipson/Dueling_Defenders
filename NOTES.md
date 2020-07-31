Building My Own Gem Notes - 

How to Build a CLI GEM

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects
8. program

Getting Set Up
1. Terminal: bundle gem superhero_fight_club (http://railscasts.com/episodes/245-new-gem-with-bundler)
                                      (https://guides.rubygems.org/make-your-own-gem/)
    cd superhero_fight_club
    code .
2. Save notes file in Gem directory as NOTES.md
3. Think about your executable in terms of CLI - create that executable file in Bin

Executable File
1. Put in a shebang to tell bash you want the Ruby interpreter
2. Use a basic test to check permissions, use chmod to make this file executable

CLI file
1. A new one is created in the executable file
2. Responsible for user interactions, inputs, welcoming user
3. Start with basic CLI structure: welcome user, list any information(optional) main menu - user input, goodbye

Environment
1. require_relative './superhero_battles/filename every time you add a new file
2. require "gem name" if you add a new gem like nokogiri, bundler, etc

IDEAS/Structure
Hello! Welcome to the Superhero Battle Simulator

- Main Menu:
    - Choose a Superhero to Learn about
    - Will ask for hero input
        - Will print Superhero facts/data - main menu
        - If hero isn't valid prints couldn't find a character with that name - main menu
    - Pick a hero for Battle (input hero to save as user hero)
        - will ask for hero input
            - prints what hero you are - main menu
            - if hero ins't valid prints can't find hero with name - main menu
    - What is my current hero for battle? (learn about user hero)
        - prints hero facts/data user currently is
        - if no hero assigned tells you to pick one
    - Battle a different hero
        -  What hero do you want to battle (name)?
            - You have chosen ____ battle now?
                - Yes
                    - Win main menu
                    - Lose main menu
                - No
                    - "Coward" Main menu
            -  Or you must a pick a user hero first - main menu