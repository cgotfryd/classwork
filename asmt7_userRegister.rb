fields = []

def getEamil
	puts "Please enter your email address:"
	email = gets.chomp

	while email.index('@')==nil || email.index('.')==nil
		puts "Please enter a valid email address:"
		email = gets.chomp
	end

	return email

end

email = getEamil
puts "Please confirm your email:"
emailConfirm = gets.chomp

until email == emailConfirm
	puts "Emails do not match"
	
	email = getEamil
	
	puts "Please confirm your email:"
	emailConfirm = gets.chomp

end

fields[fields.length] = email

puts "Please enter your full name:"
fullName = gets.chomp

until fullName.index(' ') != nil
	puts "Invalid full name. Please enter your full name:"
	fullName = gets.chomp
end

fields[fields.length] = fullName

puts "Please enter a new username.\nUsername must be 8-16 characters and cannot contain spaces."
username = gets.chomp

while username.length < 8 || username.length > 16 || username.index(' ') != nil
	puts "Invalid username. Please enter a new username.\nUsername must be 8-16 characters and cannot contain spaces."
	username = gets.chomp
end

fields[fields.length] = username

puts "Please enter a new password.\nPassword must be 12+ character and contain at least one uppercase letter."
password = gets.chomp

while password.length < 12 || password.downcase == password
	puts "Invalid password. Please enter a new password\nPassword must be 12+ character and contain at least one uppercase letter."
	password = gets.chomp
end

fields[fields.length] = password
fieldNames = ['Email','Full Name','Username','Password']

for data in fields
	puts "#{fieldNames[fields.index(data)]} : #{data}"
end