invalid = true

while invalid
	puts "Please enter a number"
	input = gets.chomp
	begin
		num = Integer(input)
		invalid = false
	rescue
		puts "#{input} is not a number. Please try again."
	end
end

if num%3 == 0 && num%5 == 0 then
	puts "FIZZBUZZ"
elsif num % 3 == 0 then
	puts "FIZZ"
elsif num % 5 == 0 then
	puts "BUZZ"
end
