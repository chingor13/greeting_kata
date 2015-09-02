require 'minitest_helper'
require 'greeting'

class TestGreeting < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Greeting::VERSION
  end

  def test_requirement_1
    assert_equal "Hello, Bob.", Greeting.greet("Bob")
  end

  def test_requirement_2
    assert_equal "Hello, my friend.", Greeting.greet(nil)
  end

  def test_requirement_3
    assert_equal "HELLO JERRY!", Greeting.greet("JERRY")
  end

  def test_requirement_4
    assert_equal "Hello, Jill and Jane.", Greeting.greet(["Jill", "Jane"])
  end

  def test_requirement_5
    assert_equal "Hello, Amy, Brian, and Charlotte.", Greeting.greet(["Amy", "Brian", "Charlotte"])
  end

  def test_requirement_6
    assert_equal "Hello, Amy and Charlotte. AND HELLO BRIAN!", Greeting.greet(["Amy", "BRIAN", "Charlotte"])
  end

  def test_assumed_requirement_6_5
    assert_equal "Hello, Amy and Charlotte. AND HELLO BRIAN AND DOBBY!", Greeting.greet(["Amy", "BRIAN", "Charlotte", "DOBBY"])
  end

  def test_requirement_7
    assert_equal "Hello, Bob, Charlie, and Dianne.", Greeting.greet(["Bob", "Charlie, Dianne"])
  end

  def test_requirement_8
    assert_equal "Hello, Bob and Charlie, Dianne.", Greeting.greet(["Bob", "\"Charlie, Dianne\""])
  end
end
