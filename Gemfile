source 'http://rubygems.org'

gem 'rails', '3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'json', '1.8.0'
gem 'mysql2', '0.3.11'
# gem 'mysql', '2.8.1'
gem 'devise', '1.5.3'
gem 'schema_plus', '0.4.1'
gem 'paperclip', '3.5.2'
gem 'whenever', '0.6.8', :require => false
gem "httparty", "0.6.1"
# gem 'sqlite3'
gem 'newrelic_rpm', '3.6.3.104'
gem "highcharts-rails", "~> 3.0.0"
gem 'exception_notification'

###### UFF ADDITIONS
group :production do
  gem 'SyslogLogger', '1.4.1'
  gem 'gelf'
  gem 'better_logging'
end

###### END UFF ADDITIONS


group :development, :test do
  gem "factory_girl_rails", '1.1.0' #, "3.4.0"
  gem 'rspec-rails', '2.10.1'
  gem 'awesome_print'
  gem 'pry'
end

group :development do
  gem 'rails-erd'
end

group :test do
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'database_cleaner', '0.8.0'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
# gem 'webrat'
# end
