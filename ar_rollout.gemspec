$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ar_rollout/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ar_rollout"
  s.version     = ArRollout::VERSION
  s.authors     = ["Enrico Carlesso", "Mattia Gheda"]
  s.email       = ["dev@doochoo.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ArRollout."
  s.description = "TODO: Description of ArRollout."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "bcrypt-ruby"
end
