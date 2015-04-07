class TextGame
  class << self
    def render(key)
      section = config[key] ? config[key] : config["default"]
      message = section["message"]
      choices = if section["choices"].nil?
        "You have died..."
      else
        section["choices"].collect do |k, v|
          "#{k} - #{v}"
        end.join("\n")
      end

      [message, choices].join("\n")
    end

    def config
      @config ||= YAML.load_file(Rails.root.join("config/game.yml"))
    end
  end
end
