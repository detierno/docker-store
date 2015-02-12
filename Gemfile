source 'https://rubygems.org'
ruby '2.2.0'

gem 'rails', '~> 4.2.0'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development

gem 'foreman'
gem 'unicorn'
gem 'newrelic_rpm'
gem 'raygun4ruby'
#gem "airbrake"

group :production do
  gem 'rails_12factor'
  gem 'aws-sdk'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0.0.beta4'
  gem 'quiet_assets'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'spring-commands-rspec'
  gem 'shoulda-matchers', require: false
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'better_errors'
  gem 'dotenv'
  gem 'binding_of_caller'
  #gem 'launchy'
  gem 'selenium-webdriver'
end
gem "codeclimate-test-reporter", group: :test, require: nil


gem 'spree', github: 'spree/spree', branch: '3-0-stable'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => 'master'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '3-0-stable'
#gem 'spree_i18n', github: 'spree/spree_i18n', branch: 'master'
#gem 'spree_fancy', :github => 'locomotivapro/spree_fancy', :branch => 'master'
