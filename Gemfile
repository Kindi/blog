source 'https://rubygems.org'

gem 'rails', '4.0.5'
gem 'pg'
gem 'bootstrap-sass'
gem 'sprockets', '2.11.0'
gem 'bcrypt'
gem 'faker'
gem 'kaminari'

group :development, :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'spork-rails', github: 'sporkrb/spork-rails' # rubygems version not rails 4 compatible
  gem 'guard-spork'
  gem 'childprocess'
end

group :test do
  gem 'selenium-webdriver', '2.0.0'
  gem 'capybara', '2.2.0'
  gem 'factory_girl_rails'
  gem 'cucumber', '1.2.5' # Spork not supported as of Cucumber 1.3.0, need to use 1.2.5
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end


gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'rubyzip', '~> 0.9.9'

group :doc do
  gem 'sdoc', '0.3.20', require:false
end

group :production do
  gem 'rails_12factor'
end





#Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
