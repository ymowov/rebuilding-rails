require "rulers/version"
require "rulers/routing"

module Rulers
  class Application
  	def call(env)
      if env["PATH_INFO"] == "/favicon.ico"
        return [404, {"Content-Type" => "text/html"}, []]
      elsif env["PATH_INFO"] == "/"
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)

      begin
        text = controller.send(act)
      rescue Exception => e
        return [500, {"Content-Type" => "text/html"}, ["Exception!!!!"]]
      end
      # `echo debug > debug.txt`;
  		[200,{'Content-Type' => 'text/html'},
  			[text]]
  	end
  end

  class Controller
    def initialize(env)
      @env = env
    end
    def env
      @env
    end
  end
end
