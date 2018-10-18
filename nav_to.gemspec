$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "nav_to/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nav_to"
  s.version     = NavTo::VERSION
  s.authors     = ["Jeremiah A. Bohling"]
  s.email       = ["jbohling@sycamoreleaf.com"]
  s.summary     = "Rails link helper for Bootstrap navs"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
end
