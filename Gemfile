source 'https://rubygems.org'
ruby "1.9.3"

gem 'sinatra'
gem 'activerecord' # interface to db
gem 'sinatra-activerecord' # bridge to use AR
gem 'unicorn'
gem 'json'

group :development do
  gem 'shotgun' # reload app code on each request
  gem 'tux' # console 
end

group :production, :development do
  gem 'pg'
end

# gem "pro_motion_slide_menu"