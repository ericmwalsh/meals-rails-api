ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

require 'rails/commands/server'

module Rails
  class Server
    alias :default_options_alias :default_options
    def default_options
      super.merge({Port: 3001}) if !ENV.key?("RAILS_ENV") or ENV['RAILS_ENV'] == "development"
    end
  end
end
