puts "Tell me a story"
story = gets.chomp

story = story.split(" ")

for i in 0...story.length
	redacted = false
	story[i].split("").each do |char|
		if char.downcase == 'b'
			redacted = true
		end
	end
	if redacted then
		print "REDACTED "
	else
		print "#{story[i]} "
	end
end