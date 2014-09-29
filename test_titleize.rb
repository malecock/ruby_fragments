require 'test/unit'
require './titleize.rb'


class TestTitleize < Test::Unit::TestCase
  def test_basic
    assert_equal("This Is A Test", "this is a test".titleize)
    assert_equal("Another Test 1234", "another test 1234".titleize)
    assert_equal("We're Testing", "We're testing".titleize)
    assert_equal("Let's Make A Test Fail!", "let's make a test fail!".titleize)
    assert_nothing_raised("A", "a".upcase)
  end
end