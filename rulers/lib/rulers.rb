require "rulers/version"

module Rulers
  class Application
  	def call(env)
  		`echo debug > debug.txt`;
  		[200,{'Content-Type' => 'text/html'},
  			["Hello!!!!Rulers -- "]] ##{[1, 2, 3].sum}

  	end

  end
end
