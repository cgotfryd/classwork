print "Please enter your mark "
mark = gets.chomp.to_i

if mark > 100 then
	puts "Overachiever much?"
elsif mark > 85 then
	puts "Congratulations! You're a straight A student!"
elsif mark > 72 then
	puts "Solid effort, that's a B!"
elsif mark > 66 then
	puts "Good work! You got a C+"
elsif mark > 59 then
	puts "You got a C. You're getting there."
elsif mark > 49 then
	put "You got a C-. Keep trying, I know it's tough."
elsif mark > 0 then
	put "I'm afraid that's an F there, buddy."
else
	put "I don't even know what you're looking for from this"
end