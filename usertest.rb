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

	# def test_assert_that_username_is_boatsnack
	# 	my_name = 
	# 	assert_equal(user_name, (my_name))
	# end

end