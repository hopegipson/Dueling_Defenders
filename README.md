<img src="https://i.imgur.com/Uldk4QR.png" width="100%" /> </img>


# Dueling Defenders

![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/hopegipson/Dueling_Defenders) 
![GitHub language count](https://img.shields.io/github/languages/count/hopegipson/Dueling_Defenders) 
![GitHub top language](https://img.shields.io/github/languages/top/hopegipson/Dueling_Defenders)
![GitHub contributors](https://img.shields.io/github/contributors/hopegipson/Dueling_Defenders)
![GitHub issues](https://img.shields.io/github/issues-raw/hopegipson/Dueling_Defenders)
![GitHub last commit](https://img.shields.io/github/last-commit/hopegipson/Dueling_Defenders)
![GitHub forks](https://img.shields.io/github/forks/hopegipson/Dueling_Defenders?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/hopegipson/Dueling_Defenders?style=social) 
![YouTube Video Views](https://img.shields.io/youtube/views/oVP5I1QeQQ0?style=social)
![YouTube Video Likes](https://img.shields.io/youtube/likes/oVP5I1QeQQ0?style=social)

This CLI accesses data from <a href="https://www.superheroapi.com/" /> this API </a> and allows users to learn more about superheroes, while also battling superheroes and deciding the victor based on key attributes. The user can decide between 5 options (and exit). The first option is learning more about a superhero, that the user will then input. The second option is assigning a superhero to the user, so that the user may battle as this superhero. The third option allows the user to learn about the superhero they are currently playing as at any time. The fourth option allows the user to battle. In battle, the user selects another superhero to try to defeat. The user can then choose if they are ready or not to battle. After the battle, the victor will be displayed based on who had better attributes in six categories: intelligence, strength, speed, durability, power, and combat. The fifth option allows the user to see a list of Superhero characters in the battleground, and how many wins and losses they have accumulated.

To watch a demo of the CLI:

<a href="https://youtu.be/oVP5I1QeQQ0
" target="_blank"><img src="http://img.youtube.com/vi/oVP5I1QeQQ0/0.jpg" 
alt="Demo of Spotify app" width="240" height="180" border="10" /></a>

Blog Post with Further Explanation on CLI build:
<a href="https://hopegipson.github.io/superhero_battle_simulator_cli"/> Here</a>


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hero_battles'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hero_battles

## Usage
Use bin/hero_battles to execute.

An API key is required to use this application, and is to be stored in an environmental variable before usage.

 Access <a href="https://www.superheroapi.com/" /> this API </a>  and sign up for a key/access-token, this key is free as of this release.

After you have your key, type these lines into your terminal to assign the environmental variable. Replace 'value' with your key number. Ex, export API_KEY=12345.

                            export API_KEY=value

                            ruby -e 'p ENV["API_KEY"]'
                            
Important your environmental variable API_KEY must be named the same as referenced in line 3 of APIService class.



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake true` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub <a href="https://github.com/hopegipson/Dueling_Defenders"/> here.</a> This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hopegipson/Dueling_Defenders/blob/master/CODE_OF_CONDUCT.md).

    -Fork this repository.
    -Create a branch: git checkout -b <branch_name>.
    -Make your changes and commit them: git commit -m '<commit_message>'
    -Push to the original branch: git push origin Spotify_Clone/master
    -Create the pull request.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HeroBattles project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hopegipson/Dueling_Defenders/blob/master/CODE_OF_CONDUCT.md).


## Languages Used

[![Top Langs](https://github-readme-stats.vercel.app/api/top-langs/?username=hopegipson&layout=compact&theme=radical)](https://github.com/hopegipson/Dueling_Defenders)


