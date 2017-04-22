source 'https://rubygems.org'
ruby "2.2.2"

git_source(:github) do |repo_name|
  repo_name = "#{left_coast_search}/#{left_coast_search}" unless repo_name.include?("/")
  "https://github.com/#{left_coast_search}.git"
end

gem 'rails'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'devise'
gem "font-awesome-rails"
gem 'bootstrap-sass', '~> 3.2.0.2'
gem 'bootstrap-social-rails'
gem 'rest-client'
gem 'aws-sdk', '~> 2.3'
gem 'aws-sdk-v1'
gem 'ckeditor'
gem 'social-share-button'
gem 'kaminari'
gem 'recaptcha', :require => 'recaptcha/rails'
gem "paperclip", "~> 4.2"
gem 'metamagic'
gem 'sitemap_generator'

group :development, :test do
  gem 'factory_girl_rails', :require => false
  gem 'simplecov', require: false
  gem 'capybara'
  gem 'rspec-rails'
  gem 'launchy'
  gem 'pry'
  gem 'dotenv-rails'
  gem 'quiet_assets'
  gem 'shoulda-matchers'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

gem 'rails_12factor', group: :production
