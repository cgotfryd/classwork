def fib(n)
	if n == 1 || n == 2
		return 1
	else
		return fib(n-1) + fib(n-2)
	end
end

def validStr(s)
	opening = 0
	closing = 0
	invalid = false

	for i in 0...s.length
		if s[i] == '['
			opening += 1
		elsif s[i] == ']'
			closing += 1
		end

		if closing > opening
			invalid = true
		end
	end

	if closing != opening
		invalid = true
	end

	if invalid
		return "Invalid"
	else
		return "Valid"
	end

end

def anagram(s1,s2)
	
	s1 = s1.downcase
	s2 = s2.downcase
	abc = 'abcdefghijklmnopqrstuvwxyz'
	valid = true

	for i in 0..25 do
		if s1.count(abc[i]) != s2.count(abc[i])
			valid = false
		end
	end

	return valid
		
end

def oddOrEven(arr)
	odd = 0
	even = 0

	arr.each do |n|
		if n % 2 == 0
			even += 1
		else
			odd += 1
		end
	end

	if odd == 1 && even > 1
		return 'even'
	elsif even == 1 && odd > 1
		return 'odd'
	else
		return 'invalid'
	end
end