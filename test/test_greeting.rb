require 'minitest_helper'
require 'greeting'

class TestGreeting < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Greeting::VERSION
  end

  def test_requirement_1
    assert_equal "Hello, Bob", Greeting.greet("Bob")
  end

  def test_requirement_2
    assert_equal "Hello, my friend", Greeting.greet(nil)
  end

  def test_requirement_3
    assert_equal "HELLO JERRY!", Greeting.greet("JERRY")
  end

  def test_requirement_4
    assert_equal "Hello, Jill and Jane.", Greeting.greet(["Jill", "Jane"])
  end
end
