require "minitest/autorun"
require_relative "user.rb"
class TestUser < Minitest::Test


	def test_assert_that_1_is_1
		assert_equal(1, 1)
	end
#following tests were to determine username data type- no longer needed
	# def test_assert_that_usernames_are_strings
	# 	username = "brittney"
	# 	assert_equal(String, set_up_username(username))
	# end

	# def test_assert_that_integers_are_still_strings
	# 	username = 1234
	# 	assert_equal(String, set_up_username(username))
	# end

	def test_assert_that_5_character_username_is_invalid
		username = 12345
		assert_equal("invalid", set_up_username(username))
	end

	def test_assert_that_6_char_username_is_valid
		username = "brittney"
		assert_equal("valid", set_up_username(username))
	end

	# def test_assert_that_email_is_string
	# 	email = "brittney@code.com"
	# 	assert_equal(String, set_up_email(email))
	# end

	def test_assert_that_email_is_correct
		email = "brittney@code.com"
		reenter_email = "brittney@code.com"
		assert_equal("valid", set_up_email(email, reenter_email))
	end

	# def test_assert_that_password_is_string
	# 	password = "password1"
	# 	assert_equal(String, set_up_password(password))
	# end

	# def test_assert_that_password_is_8_characters
	# 	password = "password"
	# 	assert_equal("valid", set_up_password(password))
	# end

	def test_assert_that_password_with_5_chars_is_invalid
		password = "hTi"
		assert_equal("invalid", set_up_password(password))
	end

	def test_assert_that_password_contains_uppercase_letters
		password = "Password"
		assert_equal("valid", password_has_upcase(password))
	end

	def test_assert_that_password_with_no_uppercase_is_invalid
		password = "lowercase"
		assert_equal("invalid", password_has_upcase(password))
	end

	def test_assert_that_password_contains_special_chars
		password = "P@ssword"
		assert_equal("valid", password_has_special_char(password))
	end

	def test_assert_that_password_with_no_special_chars_is_invalid
		password = "password"
		assert_equal("invalid", password_has_special_char(password))
	end

	def test_assert_that_password_contains_number
		password = "passw0rd"
		assert_equal("valid", password_contains_num(password))
	end

end