require 'test_helper'

class CalcString < ActiveSupport::TestCase
  test "it should return 0 for empty string" do
    assert_equal 0, Calculator.add("")
    assert_equal 9, Calculator.add("2,3,4")
    assert_equal 6, Calculator.add("1\n2,3")
    assert_equal 6, Calculator.add("//|\n1|2|3")
    assert_equal 3, Calculator.add("//;\n1;2")
  end
end