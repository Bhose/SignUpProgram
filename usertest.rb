require "minitest/autorun"
require_relative "user.rb"
class TestUser < Minitest::Test


	def test_assert_that_1_is_1
		assert_equal(1, 1)
	end

	def test_assert_that_usernames_are_strings
		username = "brittney"
		assert_equal(String, set_up_username(username))
	end

	def test_assert_that_integers_are_still_strings
		username = 1234
		assert_equal(String, set_up_username(username))
	end

end