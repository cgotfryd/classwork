def rectangle(n)
	for i in 1..n
		for j in 1..n
			print "*"
		end
		puts ""
	end
end

def half_triangle(n)
	for i in 1..n
		for j in 1..i
			print "*"
		end
		puts ""
	end
end

def triangle(n)
	for i in 1..n
		start = n - i
		fin = n + i
		for j in 1..n + n
			if j > start && j < fin
				print "*"
			else
				print " "
			end
		end
		puts ""
	end
end

def diamond(n)
	mid = n/2

	#top
	for i in 1..mid + 1
		first = n - i
		last = n + i
		for j in 1..n*2
			if j > first && j < last
				print "*"
			else
				print " "
			end
		end
		puts ""
	end

	#bottom
	for i in mid.downto(1)
		first = n - i
		last = n + i 
		for j in 1..n*2
			if j > first && j < last
				print "*"
			else
				print " "
			end
		end
		puts ""
	end
end

def hourglass(n)
	mid = n/2 + 1
	
	#top
	for i in mid.downto(1)
		first = n - i
		last = n + i 
		for j in 1..n*2
			if j > first && j < last
				print "*"
			else
				print " "
			end
		end
		puts ""
	end
	
	#bottom
	for i in 2..mid
		first = n - i
		last = n + i
		for j in 1..n*2
			if j > first && j < last
				print "*"
			else
				print " "
			end
		end
		puts ""
	end
end