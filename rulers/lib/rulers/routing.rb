module Rulers
  class Application
    def get_controller_and_action(env)
      _, cont, action, after = env["PATH_INFO"].split("/", 4)
      cont = cont.capitalize
      cont += "Controller"

      [Object.const_get("QuotesController"), "a_quote"]
    end
  end
end
