source 'http://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'mysql2'
gem 'json'
gem 'friendly_id'#, '~> 3.3.0.rc2'

#For Markdown
gem 'redcarpet', '~> 1.17.2'
gem 'albino'
gem 'nokogiri'
gem 'coderay'

gem 'RedCloth'

gem 'rake-compiler', '~> 0.7.1'
gem 'rvm', '~> 1.2.6'

group :development do
  gem 'mysql'
  
  # Deploy with Capistrano
  gem 'capistrano'
  gem 'capistrano-ext'
end

group :production, :staging do
  gem 'mysql2'#, '~> 0.2.7', :platform => :ruby # special version only necessary for Rails 3.0.x

    # Crontab entries
  gem 'whenever', :require => false
end


# Javascript / CSS
gem 'jquery-rails'
gem 'sass'

# Background processing
gem 'delayed_job_active_record'
gem 'daemons'

# Authentication
gem 'sorcery'
gem 'authlogic'
gem 'ruby-net-ldap', :require => 'net/ldap'

# Extra Gems
gem 'maruku' # pure Ruby Markdown lib


group :development, :test do
  # unit testing framework
  gem 'rspec-rails'
  # restart the server automatically on file changes
  gem 'guard-rails'
  # runs "bundle install" automatically using guard
  gem 'guard-bundler'
  # reloads CSS and JS automatically using guard
  gem 'guard-livereload'
end

group :test do
  gem 'sqlite3'
  
  # acceptance tests
  gem 'cucumber-rails'
  # frontend testing / browser automation
  gem 'capybara'
  # Capybara driver
  gem 'capybara-webkit', :platforms => :ruby
  gem 'capybara-screenshot', :platforms => :ruby #get screenshot when using webkit driver
  gem 'capybara-celerity', :platforms => :jruby
  
  # mocking models (instead of fixtures)
  gem 'factory_girl_rails'
  # cleaning database while testing
  gem 'database_cleaner'
  # cross platform browser launcher
  gem 'launchy'
  # additional matchers for rspec
  gem 'shoulda-matchers'
  
  # test server to reduce startup time for tests
  gem 'spork', '~> 1.0rc'
  # runs specs automatically on file changes using guard and spork
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-cucumber'
end



# Gems used only for assets and not required
# in production environments by default.
#group :assets do
#  gem 'sass-rails',   '~> 3.2.3'
#  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

#  gem 'uglifier', '>= 1.0.3'
#end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'