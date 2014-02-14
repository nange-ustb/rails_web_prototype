# -*- encoding : utf-8 -*-
require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module RailsWebPrototype
  class Application < Rails::Application
     Mime::Type.register "text/excel", :xls

    config.paths["config/routes"].concat(Dir[Rails.root.join("config/routes/*.rb")])

    config.generators do |g|
      g.template_engine :haml
      g.test_framework  :rspec
      g.fixture_replacement :factory_girl
    end

    # Configure the default encoding used in templates for Ruby 1.9.
    config.time_zone = 'Beijing'
    #config.active_record.default_timezone = :Beijing
    config.i18n.default_locale = :zh
    config.i18n.locale = :zh

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password, :password_confirmation]

    # Enable the asset pipeline
    config.assets.enabled = true

    config.active_record.whitelist_attributes = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    config.encoding = "utf-8"

    config.action_mailer.smtp_settings = {
        :address => "mail.fwxgx.com",
        :port => 25,
        :domain => "fwxgx.com",
        :authentication => :login,
        :user_name => "lib@fwxgx.com",
        :password => "123qwe!@#",
        :enable_starttls_auto => true
    }
  end
end
