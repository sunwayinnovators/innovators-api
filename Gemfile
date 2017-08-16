source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', github: "rails/rails"
gem 'arel', github: 'rails/arel'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'


# Authentication. Read more: https://github.com/lynndylanhurley/devise_token_auth
# gem 'devise', github: 'plataformatec/devise', branch: 'master'
gem 'omniauth', '>= 1.0.0'
gem 'devise_token_auth', github: 'lynndylanhurley/devise_token_auth', branch: 'master'
# Model Serializer
gem 'active_model_serializers'
# RSpec with Swagger. Read more: 
gem 'rswag'
# View-Models Decorator. Read more: https://github.com/drapergem/draper
gem 'draper'
# Authorization. Read more: https://github.com/elabs/pundit
gem 'pundit'
# Tagging. Read more: https://github.com/mbleigh/acts-as-taggable-on
gem 'acts-as-taggable-on', '~> 4.0'
# Slugify. Read more: https://github.com/norman/friendly_id
gem 'friendly_id', '~> 5.1.0'
# Image Processing. Read more: https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave'
gem 'carrierwave-base64'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  # Generate random test data
  gem 'factory_girl_rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # N+1 query detection. Read more: https://github.com/flyerhzm/bullet
  # gem 'bullet', github: 'flyerhzm/bullet', branch: 'master'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
