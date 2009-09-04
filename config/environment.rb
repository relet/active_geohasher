# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'json'
  config.gem 'geokit'
  config.gem 'hpricot'
  config.gem 'haml'
  
  config.time_zone = 'UTC'
  
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_charset = "utf-8"

end

Mime::Type.register "application/vnd.google-earth.kml+xml", :kml

