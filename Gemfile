source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '~> 2.4.0'
gem 'rails', '~> 5.0.2'

gem 'devise'
gem 'bootstrap', '~> 4.0.0.alpha6'

gem 'pg'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'fuubar'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'rails-controller-testing'
  gem 'simplecov', require: false
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'capybara'
end

group :development do
  gem 'rubocop', require: false
  gem 'rails_best_practices', require: false
  gem 'brakeman', require: false
  gem 'bullet'

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
