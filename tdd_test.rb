require "minitest/autorun"
require_relative "codes.rb"

class TestCodes < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end
    def test_to_return_string
        assert_equal(String, string_return("Coded").class)
        assert_equal(String, string_return("Coded with spaces").class)
        assert_equal(String, string_return("Coded with Special.").class)
        assert_equal(String, string_return("Coded with .>?<?<.").class)
    
    end
    def test_for_spaces_and_special
        assert_equal("coded", ready_text("Coded"))
        assert_equal("codedwithspaces",ready_text("Coded with spaces"))
        assert_equal("codedwithspecial",ready_text("Coded with Special."))
        assert_equal("codedwith",ready_text("Coded with .>?<?<."))
    end


end