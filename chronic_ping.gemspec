$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chronic_ping/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chronic_ping"
  s.version     = ChronicPing::VERSION
  s.authors     = ["Ryan Hall"]
  s.email       = ["ryan@allegroapps.com"]
  s.homepage    = "https://chronic-ping.herokuapp.com"
  s.summary     = "Uses ajax and chronic to parse date text_fields"
  s.description = "Simple rails engine that uses ajax to ping Chronic, giving users imediate feedback regarding the date they entered in a text field."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]

  s.add_dependency "rails", "> 3.1"
  s.add_dependency "chronic"
  s.add_dependency "jquery-rails"
end
