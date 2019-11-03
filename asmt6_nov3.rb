def hello
	return "Hello, world!"
end

def divide(num1,num2)
	return num1.to_f/num2.to_f
end

def grading(mark)

	if mark > 100 then
		return "Overachiever much?"
	elsif mark > 85 then
		return "Congratulations! You're a straight A student!"
	elsif mark > 72 then
		return "Solid effort, that's a B!"
	elsif mark > 66 then
		return "Good work! You got a C+"
	elsif mark > 59 then
		return "You got a C. You're getting there."
	elsif mark > 49 then
		return "You got a C-. Keep trying, I know it's tough."
	elsif mark > 0 then
		return "I'm afraid that's an F there, buddy."
	else
		return "I don't even know what you're looking for from this"
	end
end

def tempConvert(temp,unit)
	
	if unit.downcase == "f" then
		result_temp = ((temp-32)*5/9).round(1)
		result_unit = "C"
	elsif unit.downcase == "c" then
		result_temp = ((temp*9/5)+32).round(1)
		result_unit = "F"
	end

	return "#{temp} degrees #{unit} is #{result_temp} degrees #{result_unit}"

end

def stringThings(str)
	str = str.strip
	if str == ''
		return 'String is whitespace'
	end
	str = str.capitalize
	tempStr = str.gsub(' ','').downcase
	if tempStr.reverse == tempStr && tempStr.length > 1
		return "'#{str}' is a palindrome"
	end
	return str
end
