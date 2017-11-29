
def set_up_username(username)
	username = username.to_s
	# username.class- test to make sure usernames were strings only

	if username.length > 5
		"valid"
	else 
		"invalid"
	end
end

def set_up_email(email)
	email = email.to_s
	email.class
end