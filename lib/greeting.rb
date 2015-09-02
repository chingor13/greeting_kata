require "greeting/version"
require "active_support/all"

module Greeting
  def self.greet(name)
    name ||= "my friend"

    if name.is_a?(Array)
      return "Hello, #{name.to_sentence}."
    else
      if name == name.upcase
        return "HELLO #{name}!"
      end
    end

    "Hello, #{name}"
  end
end
