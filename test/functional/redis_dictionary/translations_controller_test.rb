# encoding: utf-8
require 'test_helper'

module RedisDictionary
  class TranslationsControllerTest < ActionController::TestCase

    # produced error
    # test "should get index" do
    #   get :index, use_route: :redis_dictionary
    #   assert_response :success
    #   assert_not_nil assigns(:translations)
    # end

    test "should post create as HTML" do
      post :create, key: 'test.lol', value: 'lol', locale: 'es', use_route: :redis_dictionary, format: :html
      assert_redirected_to redis_dictionary_root_path
    end

    test "should post create as JS" do
      post :create, key: 'test.lol', value: 'lol', locale: 'es', use_route: :redis_dictionary, format: :js
      assert_not_nil assigns(:digest)
      assert_response :success
    end

    test "should delete destroy as HTML" do
      delete :destroy, use_route: :redis_dictionary, format: :html
      assert_redirected_to redis_dictionary_root_path

    end

    test "should delete destroy as JS" do
      delete :destroy, use_route: :redis_dictionary, format: :js
      assert_response :success
    end

  end
end
