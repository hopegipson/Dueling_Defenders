Notes - 

How to Build a CLI GEM

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects
8. program

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
        - tells you if hero is unassigned
    - Battle a different hero
        -  What hero do you want to battle (name)?
            - You have chosen ____ battle now?
                - Yes
                    - Win main menu
                    - Lose main menu
                - No
                    - "Coward" Main menu
            -  Or you must a pick a user hero first - main menu
    - How many battles has each hero in battleground won/lost
        -prints list of heros and wins/losses
        -prints no heroes in battleground yet