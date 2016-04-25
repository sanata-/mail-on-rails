source 'https://rubygems.org'


gem 'rails', '>= 5.0.0.beta3', '< 5.1'
gem 'pg', '~> 0.18'
gem 'puma'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'materialize-sass'
gem 'simple_form'
gem 'figaro'
gem 'httparty'
gem 'virtus'

group :development, :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'pry-rails'
  gem 'capybara'
  gem 'webmock'
  gem 'byebug'
  gem 'faker'
end

group :test do
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
  end
end

group :development do
  gem 'web-console', '~> 3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
