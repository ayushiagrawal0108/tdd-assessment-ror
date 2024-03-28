require 'test_helper'

class CalcString < ActiveSupport::TestCase
  test "it should return 0 for empty string" do
    assert_equal 0, Calculator.add("")   
  end

  test "it should return sum of numbers" do
    assert_equal 9, Calculator.add("2,3,4")
    assert_equal 6, Calculator.add("1\n2,3")
  end

  test "it should support different delimeters" do
    assert_equal 6, Calculator.add("//|\n1|2|3")
    assert_equal 3, Calculator.add("//;\n1;2")
  end

  test "it should raise an exception for negative numbers" do
    exception = assert_raises(RuntimeError) { Calculator.add("2,-3,4") }
    assert_equal "negative numbers not allowed -3", exception.message
  end
end