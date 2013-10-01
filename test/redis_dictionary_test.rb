# encoding: utf-8
require 'test_helper'

class RedisDictionaryTest < ActiveSupport::TestCase

  test "should allow developers to set configurations with a block" do
    initial_value = RedisDictionary.configuration.layout
    RedisDictionary.configure do |config|
      config.layout = "custom_layout_developer"
    end
    user_set_value = RedisDictionary.configuration.inline_main_app_named_routes
    assert_not_equal initial_value, user_set_value
  end

  def teardown
    RedisDictionary.configure do |config|
      config.inspect
    end
  end

end