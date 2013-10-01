require "redis"
require 'twitter-bootstrap-rails'
require 'jquery-rails'
require 'jquery-ui-rails'
require "redis_dictionary/engine"
require "redis_dictionary/configuration"

module RedisDictionary
  # Exception raised when gem may not be configured properly
  class ConfigurationError < StandardError
  end

  # Set global configuration options for RedisDictionary
  # @see README.md
  def self.configure(&block)
    block.call(configuration)
  end

  # Returns RedisDictionary's globalconfiguration. Will initialize a new instance
  # if not already set
  def self.configuration
    @configuration ||= Configuration.new
  end

end
