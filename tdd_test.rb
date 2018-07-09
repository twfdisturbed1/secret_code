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
    def test_that_returns_individual_char
        assert_equal(["c", "o", "d", "e", "d"],text_to_char("Coded"))
        assert_equal(["c", "o", "d", "e", "d", "w", "i", "t", "h", "s", "p", "a", "c", "e", "s"], text_to_char("Coded with spaces"))
        assert_equal(["c", "o", "d", "e", "d", "w", "i", "t", "h", "s", "p", "e", "c", "i", "a", "l"], text_to_char("Coded with Special."))
        assert_equal(["c", "o", "d", "e", "d", "w", "i", "t", "h"], text_to_char("Coded with .>?<?<."))
    end
    def test_assert_atoz_returns_as_array_filled_with_alphabet
		assert_equal(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], atoz())
        assert_equal(Array, atoz().class)
    end
    def test_assert_ftoe_returns_as_array_shifted_5
		assert_equal(["f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e"], ftoe())
        assert_equal(Array, ftoe().class)
    end	
    def test_assert_message_returns_as_indexed_array
		assert_equal([2, 14, 3, 4, 3], indexed_message("Coded"))
        assert_equal([2, 14, 3, 4, 3, 22, 8, 19, 7, 18, 15, 0, 2, 4, 18], indexed_message("Coded with spaces"))
        assert_equal([2, 14, 3, 4, 3, 22, 8, 19, 7, 18, 15, 4, 2, 8, 0, 11], indexed_message("Coded with special."))
        assert_equal([2, 14, 3, 4, 3, 22, 8, 19, 7], indexed_message("Coded with ./? "))

    end
    def test_assert_indexed_message_returns_as_encrypted_secret_code
        assert_equal("htiji", encrypter("Coded"))
        assert_equal("htijibnymxufhjx", encrypter("Coded with spaces."))
        assert_equal("htijibnymxujhnfq", encrypter("Coded with special"))
        assert_equal("htijibnym", encrypter("Coded with ./?"))
    end
    def test_assert_decrypted_message_returns_as_individual_characters
		assert_equal(["h", "t", "i", "j", "i"], text_to_char("htiji"))
    	assert_equal(["h", "t", "i", "j", "i", "b", "n", "y", "m"], text_to_char("htijibnym"))
    end
    def test_assert_decrypted_message_returns_as_indexed_array
        assert_equal([2, 14, 3, 4, 3], indexed_encrypted_message("htiji"))
        assert_equal([2, 14, 3, 4, 3, 22, 8, 19, 7], indexed_encrypted_message("htijibnym"))
    end
end