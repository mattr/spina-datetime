$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'spina/datetime/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'spina-datetime'
  s.version     = Spina::Datetime::VERSION
  s.authors     = ['Matt Redmond']
  s.email       = ['me@mattredmond.com']
  s.homepage    = 'https://spinacms.com'
  s.summary     = 'Add date and datetime editor options for Spina CMS'
  s.description = 'Adds Spina::Date and Spina::DateTime options for editors in Spina admin theme configuration.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.0'
  s.add_dependency 'spina', '~> 0.12.0'

  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'sqlite3'
end
