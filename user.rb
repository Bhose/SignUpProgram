
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
	if password.length > 7
		"valid"
	else
		return "invalid"
	end

end

def password_has_upcase(password)
	includesCaps = false
	upcase = [*('A'..'Z')]
	password = password.to_s
	upcase.each do |letter|
		if password.include?(letter)
			 includesCaps = true
		end
	end

	if includesCaps == true
		return "valid"
	end
	if includesCaps == false
		return "invalid"
	end
end

def password_has_lowcase(password)
	includes_lowcase = false
	lowcase = [*('a'..'z')]
	password = password.to_s
	lowcase.each do |lowCletters|
		if password.include?(lowCletters)
			includes_lowcase = true
		end
	end
	if includes_lowcase == true
		return "valid"
	else
		return "invalid"
	end
end


def password_has_special_char(password)
	specChar = false
	sChars = ["!", "@", "#", "$", "%", "^", "&", "*"]
	password = password.to_s
	sChars.each do |characters|
		if password.include?(characters)
			specChar = true
		end
	end
	if specChar == true
		return "valid"
	else
		return "invalid"
	end
end

def password_contains_num(password)
	num = false
	numbers = [*(0..9)]
	password = password.to_s
	numbers.each do |digits|
		if password.include?(digits.to_s)
			num = true
		end
	end
	if num == true
		return "valid"
	else
		return "invalid"
	end
end