source 'http://ruby.taobao.org'

gem 'rails', '3.2.13'

group :development do
	gem 'sqlite3'
	gem 'quiet_assets'
	gem 'rails-erd'
	gem 'annotate'
	gem "magic_encoding"
end

group :production , :staging do
  gem "pg"
  gem 'exception_notification', '3.0.1'
end


group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :test do
  gem 'turn', :require => false
  gem "rspec"
  gem 'rspec-rails'
end

#image
gem  "carrierwave"
gem  "mini_magick"

#front end
gem "jquery-rails" , '2.1.4'
gem "twitter-bootstrap-rails" , "2.1.3"

#mvc
gem  'inherited_resources'
gem  'simple_form'
gem  'haml-rails'
gem  'kaminari'
gem  'has_scope'
gem  'responders'
gem 'spreadsheet'
gem 'rails_kindeditor','0.3.11'
gem "squeel"
gem 'active_decorator'

# work flow
gem "aasm" , '3.0.16'

#test
gem "factory_girl" , "< 3.0"
gem 'factory_girl_rails',  :group => [:development, :test]

#sso domain login
gem 'devise' , "2.1.2"
gem 'rubycas-client'
gem 'devise_cas_authenticatable'
gem 'nokogiri', "1.5.6"

#validate
gem 'client_side_validations'
gem 'client_side_validations-simple_form'

# cache and job
gem 'redis-objects'
gem 'redis-namespace'
gem 'sidekiq'
#gem 'sidetiq'
gem 'sinatra', '>= 1.3.0', :require => nil

#others
gem 'therubyracer'
gem 'json'
gem 'faraday'
gem 'settingslogic'
gem 'cancan'
gem 'enumerize'


