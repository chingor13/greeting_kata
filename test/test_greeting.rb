require 'minitest_helper'
require 'greeting'

class TestGreeting < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Greeting::VERSION
  end

  def test_basic
    assert_equal "Hello, Bob", Greeting.greet("Bob")
  end

  def test_nil_name
    assert_equal "Hell, my friend", Greeting.greet(nil)
  end
end
