$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_website/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_website"
  s.version     = BootstrapWebsite::VERSION
  s.authors     = ["saikiran mothe,chanakya devraj,sairam illendula,dheeraj shrama,bhanu prasad(loverboy)"]
  s.email       = ["saikiran.mothe@gmail.com,sai@openresponsive.com,bhanu@openresponsive.com,contact@openresponsive.com"]
  s.homepage    = "http://www.openresponsive.com"
  s.summary     = "bootstrap responsive dynamic website."
  s.description = "Description need to update"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
