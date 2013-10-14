module RedisDictionary
  class Configuration

    # The name of the before filter we'll call to authenticate the current user.
    # Defaults to :login_required
    attr_accessor :authentication_method

    # Should the routes of the main app be accessible without
    # the "main_app." prefix ?
    attr_accessor :inline_main_app_named_routes

    # Defaults to nil
    attr_accessor :layout

    attr_accessor :menu_items

    def initialize
      @inline_main_app_named_routes = false
    end


  end
end
