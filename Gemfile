# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'graphql', '~> 1.9'
gem 'graphiql-rails', group: :development
gem 'devise', '~> 4.6'
gem 'awesome_print', '~> 1.8'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry', '~> 0.12.2'
  gem 'rubocop', '~> 0.72.0'
  gem 'rubocop-performance', '~> 1.4'
  gem 'faker', '~> 1.9'
  gem 'dotenv-rails', '~> 2.7'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'factory_bot_rails', '~> 5.0'
  gem 'rspec-rails', '~> 3.8'
  gem 'database_cleaner', '~> 1.7'
  gem 'shoulda-matchers', '~> 4.1'
  gem 'rspec-graphql_matchers', '~> 0.7.1'
end
