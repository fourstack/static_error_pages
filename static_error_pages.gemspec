$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "static_error_pages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "static_error_pages"
  s.version     = StaticErrorPages::VERSION
  s.authors     = ["Petrik de Heus"]
  s.email       = ["petrik@fourstack.nl"]
  s.homepage    = ""
  s.summary     = "Static error pages for your Rails app"
  s.description = "Static error pages for your Rails app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.2.0"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
