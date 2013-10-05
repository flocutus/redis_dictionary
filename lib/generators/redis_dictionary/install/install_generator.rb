module RedisDictionary
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path('../templates', __FILE__)
      
      desc "Installs Redis Dictionary and generates initializer + route"

      def copy_initializer
        template 'redis_dictionary.rb.erb', 'config/initializers/redis_dictionary.rb'
      end

      def setup_routes
          route "mount RedisDictionary::Engine => '/translations'"
      end
    end
  end
end