# encoding: utf-8
require 'test_helper'

module RedisDictionary

  class ConfigurationTest < ActiveSupport::TestCase

    def setup
      @i18n_configuration = RedisDictionary::Configuration.new
    end

    test "should set :authentication_method to nil" do
      assert_nil @i18n_configuration.authentication_method
    end

    test "should set :layout to nil" do
      assert_nil @i18n_configuration.layout
    end

    test "should set :inline_main_app_named_routes to false" do
      assert !@i18n_configuration.inline_main_app_named_routes
    end
  end
end