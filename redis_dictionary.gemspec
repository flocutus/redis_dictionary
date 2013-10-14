# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "redis_dictionary/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "redis_dictionary"
  s.version     = RedisDictionary::VERSION
  s.authors     = ["Fourmach", "José Galisteo Ruiz", "redrick"]
  s.email       = ["cheaterblue@gmail.com"]
  s.homepage    = "https://github.com/redrick/redis_dictionary"
  s.summary     = "Rails frontend for i18n with redis backend as extended version of fourmach/i18n_dashboard gem."
  s.license = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.required_ruby_version     = '>= 1.9.3'

  s.add_dependency "rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "redis"
  s.add_dependency 'uglifier'
  s.add_dependency 'will_paginate'

  s.add_dependency "less-rails"
  s.add_dependency 'twitter-bootstrap-rails'

  s.add_development_dependency "simplecov"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "capybara"
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'sqlite3'  
end
