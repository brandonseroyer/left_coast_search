source 'https://rubygems.org'

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
gem 'bootstrap-sass', '~> 3.2.0.2'
gem "font-awesome-rails"
gem 'bootstrap-social-rails'
gem 'rest-client'
gem 'aws-sdk', '< 2.0'
gem 'stripe'
gem 'ckeditor'
gem 'social-share-button'
gem 'kaminari'
gem 'recaptcha', :require => 'recaptcha/rails'
gem "paperclip", "~> 4.2"
gem 'dropzonejs-rails'
gem 'lightbox-bootstrap-rails'

group :development, :test do
  gem 'factory_girl_rails'
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

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
