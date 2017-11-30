
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

def password_is_valid(password)
	contains_num = password_contains_num(password)
	contains_low = password_has_lowcase(password)
	contains_up = password_has_upcase(password)
	contains_sChar = password_has_special_char(password)
	length_requirement = set_up_password(password)

	if contains_num == "valid" &&
	   contains_low == "valid" &&
	   contains_up == "valid" &&
	   contains_sChar == "valid" &&
	   length_requirement == "valid"
	   "valid"
	else
		"invalid"
	end
end

def password_matches(password, reenter_password)
	if password == reenter_password
		"valid"
	else
		"invalid"
	end
end