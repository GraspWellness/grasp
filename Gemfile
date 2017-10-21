source "https://rubygems.org"
ruby "2.4.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.3"

gem "devise"
gem "pg", "~> 0.18"
gem "puma", "~> 3.7"
gem "react_on_rails", "10.0.0"
gem "sass-rails", "~> 5.0"
gem "sidekiq"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "webpacker", "~> 3.0"

group :development do
  gem "letter_opener"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
end

