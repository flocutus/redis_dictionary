# encoding: utf-8

module RedisDictionary
  class ApplicationController < ActionController::Base

    layout RedisDictionary.configuration.layout if RedisDictionary.configuration.layout

    # Sets a class method to specify a before-filter csalling
    # whatever RedisDictionary.configuration.authentication_method is set to
    # Accepts the usual before_filter optionss
    def self.redis_dictionary_authenticate(options ={})
      if redis_dictionary_conf.authentication_method
        before_filter redis_dictionary_conf.authentication_method, options
      end
    end

    # A helper method to access the RedisDictionary::configuration
    # at the class level
    def self.redis_dictionary_conf
      RedisDictionary::configuration
    end


  end
end
