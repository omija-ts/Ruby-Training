source "https://rubygems.org"

gem "rails", "4.2.9"
gem "therubyracer", platforms: :ruby

gem "mysql2", '~> 0.4.10'
gem "sdoc", "~> 0.4.0", group: :doc
gem "bcrypt", "~> 3.1.7"

gem "active_model_serializers"
gem "postamt"
gem "global"
gem "awesome_print"
gem "rest-client"
gem "capybara"
gem "poltergeist"
gem "exception_notification", github: "smartinez87/exception_notification"
gem "slack-notifier"
gem "redis"
gem "redis-namespace"

gem "sidekiq", '~> 4.0'
gem "sidekiq-failures"
gem "sidekiq-history"
gem "sidekiq-statistic"
source "https://7149ac20:ed4c8796@enterprise.contribsys.com/" do
  gem 'sidekiq-pro'
  gem "sidekiq-ent"
end

gem "sinatra", require: false
gem "holiday_jp"
gem "virtus"
gem "weak_parameters"
gem "mechanize"
gem "aws-sdk", "~> 2"

gem "unicorn"
gem "bugsnag"

group :development do
  gem "capistrano"
  gem "capistrano-bundler"
  gem "capistrano-rbenv"
  gem "capistrano-rails"
  gem "capistrano3-unicorn"
  gem "capistrano-slackify", require: false
  gem "capistrano-sidekiq", github: "seuros/capistrano-sidekiq"

  gem "guard"
  gem "guard-rails"
  gem "guard-rspec"
  gem "guard-sidekiq"
  gem "growl"
  gem "web-console", "~> 2.0"
  gem "rubocop", "0.46.0", require: false
end

group :development, :test do
  gem "byebug"

  gem "rspec-rails"
  gem "rspec-parameterized"
  gem "rspec-json_matcher"
  gem "rspec-retry"
  gem "rspec-its"
  gem "spring"
  gem "spring-commands-rspec"

  gem "timecop"
  gem "factory_girl_rails"
  gem "faker"

  gem "pry-rails"
  gem "pry-byebug"
  gem "pry-stack_explorer"
  gem "pry-remote"
  gem "pry-doc"
end

group :test do
  gem "database_rewinder"
  gem "webmock"
end
