require "greeting/version"

module Greeting
  def self.greet(name)
    name ||= "my friend"

    if name == name.upcase
      return "HELLO #{name}!"
    end

    "Hello, #{name}"
  end
end
