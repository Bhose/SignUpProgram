
def set_up_username(username)
	username = username.to_s
	# username.class- test to make sure usernames were strings only

	if username.length > 5
		"valid"
	else 
		"invalid"
	end
end

def set_up_email(email, reenter_email)
	email = email.to_s
	if email = reenter_email
		"valid"
	else
		"invalid"
	end
end

def set_up_password(password)
	indicator = 0
	includesCaps = false

	upcase = [*('A'..'Z')]
	# lowcase = [a..z]
	# number = [0..9]
	# spechar = ["!", "@", "#", "$", "%", "^", "&", "*"]
	password = password.to_s

	if password.length > 7
		"valid"
	else
		"invalid"
	end

	upcase.each do |letter|
		if password.include?(letter)
			 includesCaps = true
		end
	end

	if includesCaps == true
		return "valid"
	else 
		return "invalid"
	end


# if password =~ /[Password]/#will this work for any password with caps?
	# 	"valid"
	# end
	# if password =~ /password/
	# 	"invalid"
	# end
end