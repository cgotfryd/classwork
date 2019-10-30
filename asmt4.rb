puts "Please enter the temperature."
temp = gets.chomp.to_f
puts "Please enter the temperature unit [C]elcius or [F]arenheit"
unit = gets.chomp

if unit.downcase == "f" then
	result_temp = ((temp-32)*5/9).round(1)
	result_unit = "C"
elsif unit.downcase == "c" then
	result_temp = ((temp*9/5)+32).round(1)
	result_unit = "F"
end

puts "#{temp} degrees #{unit} is #{result_temp} degrees #{result_unit}" 
