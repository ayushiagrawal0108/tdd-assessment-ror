require 'test_helper'

class CalcString < ActiveSupport::TestCase
  test "it should return 0 for empty string" do
    assert_equal 0, StringCalculator.add("")
  end
end