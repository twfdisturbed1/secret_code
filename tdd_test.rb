require "minitest/autorun"
require_relative "codes.rb"

class TestCodes < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_to_return_string
        assert_equal(String, string_return("Coded").class)
    end
end