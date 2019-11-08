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
	if redacted
		story[i] = 'REDACTED'
	end
end

puts story.join(" ")