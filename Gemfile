# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
gem 'async-websocket', '~> 0.8.0'
gem 'celluloid-io'
gem 'dentaku'
gem 'dotenv'
gem 'puma'
gem 'sinatra'
gem 'slack-ruby-bot'
group :development, :test do
  gem 'foreman'
  gem 'rake'
end

group :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'vcr'
  gem 'webmock'
end
