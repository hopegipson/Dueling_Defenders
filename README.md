# HeroBattles

This CLI accesses data from https://www.superheroapi.com/ and allows users to learn more about superheroes, while also battling superheroes and deciding the victor based on key attributes. The user can decide between 4 options (and exit). The first option is learning more about a superhero, that the user will then input. The second option is assigning a superhero to the user, so that the user may battle as this superhero. The third option allows the user to learn about the superhero they are currently playing as at any time. The fourth option allows the user to battle. In battle, the user selects another superhero to try to defeat. The user can then choose if they are ready or not to battle. After the battle, the victor will be displayed based on who had better attributes in six categories: intelligence, strength, speed, durability, power, and combat.

To watch a demo of the CLI in action you can visit here.

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

https://www.superheroapi.com/ Access this website and sign up for an API key/access-token, this key is free as of this release.

After you have your key, type these lines into your terminal to assign the environmental variable. Replace 'value' with your key number. Ex, export API_KEY=12345.

                            export API_KEY=value

                            ruby -e 'p ENV["API_KEY"]'
                            
Important your environmental variable API_KEY must be named the same as referenced in line 3 of APIService class.



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake true` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/hero_battles. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/hero_battles/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HeroBattles project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/hero_battles/blob/master/CODE_OF_CONDUCT.md).
