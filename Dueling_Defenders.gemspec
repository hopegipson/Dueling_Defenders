require_relative 'lib/Dueling_Defenders/version'

Gem::Specification.new do |spec|
  spec.name          = "Dueling_Defenders"
  spec.version       = '0.1.0'
  spec.authors       = ["hopegipson"]
  spec.email         = ["gipson.hope@gmail.com"]

  spec.summary       = %q{A gem that allows the user to battle and learn about superheroes}
  spec.description   = %q{This CLI accesses data from https://www.superheroapi.com/ and allows users to learn more about superheroes, while also battling superheroes and deciding the victor based on key attributes. The user can decide between 5 options (and exit). The first option is learning more about a superhero, that the user will then input. The second option is assigning a superhero to the user, so that the user may battle as this superhero. The third option allows the user to learn about the superhero they are currently playing as at any time. The fourth option allows the user to battle. In battle, the user selects another superhero to try to defeat. The user can then choose if they are ready or not to battle. After the battle, the victor will be displayed based on who had better attributes in six categories: intelligence, strength, speed, durability, power, and combat. The fifth option allows the user to see a list of Superhero characters in the battleground, and how many wins and losses they have accumulated.}
  spec.homepage      = "https://github.com/hopegipson/Dueling_Defenders"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hopegipson/Dueling_Defenders"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "colorize"
end
