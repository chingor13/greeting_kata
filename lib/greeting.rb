require "greeting/version"
require "active_support/all"

module Greeting
  def self.greet(name)
    name ||= "my friend"

    names = Array(name)
    names = names.map do |name|
      if match = name.match(/^["'](.*)["']$/)
        # quoted
        match[1]
      else
        name.split(/,\s*/)
      end
    end.flatten

    parts = names.partition do |name|
      name != name.upcase
    end

    parts.map do |part|
      subgreet(part)
    end.compact.join(" AND ")
  end

  def self.subgreet(names)
    return nil if names.empty?
    if names.all?{|name| name.upcase == name}
      return "HELLO #{names.to_sentence}!"
    else
      "Hello, #{names.to_sentence}."
    end
  end
end
