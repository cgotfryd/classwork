def inventoryManagement(n)
	nowStocking = []
	for i in 1..n do
		newItem = false

		until newItem
	
			puts "Please enter the stock item:"
	
			item = gets.chomp
	
			if nowStocking.index(item) != nil
				puts "You've already entered #{item} during this stocking. Would you like to [1] add more stock or [2] enter a new item?"
				selection = gets.chomp.to_i
				if selection == 1
					newItem = true
					nowStocking[nowStocking.length] = item
				elsif selection == 2
				end
			else
				newItem = true
				nowStocking[nowStocking.length] = item
			end
		end
		
		if @inventoryCount.include? item
			puts "#{item.capitalize} already exists in inventory with a stock of #{@inventoryCount[item]}."
			puts "This value will be added to the stock you input below. To leave the stock unchanged, input '0'"
			puts "How many #{item}s are being stocked?"
			stock = gets.chomp.to_i
			@inventoryCount[item] += stock
		else
			puts "How many #{item}s are being stocked?"
			stock = gets.chomp.to_i
			@inventoryCount[item] = stock
		end
	end
end

@inventoryCount = Hash.new

puts "How many items are you adding to inventory?"
newItems = gets.chomp.to_i
inventoryManagement(newItems)

@inventoryCount.each do |item,stock|
	puts "#{item.capitalize} has #{stock} in stock."
end