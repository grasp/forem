$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "forem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "forem"
  s.version     =  ::Forem.version
  s.authors     = ["hunter.wxhu"]
  s.email       = ["hunter.wxhu@gmail.com"]
  s.homepage    = "http://google.com.hk"
  s.summary     = "move  forem to mongodb based"
  s.description = "move  forem to mongodb based"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
