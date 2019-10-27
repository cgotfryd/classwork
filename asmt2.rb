puts "How much did you make?"
income = gets.chomp.to_i

tax = 0

if income <= 47630 then
	tax = income * 0.15
else
	tax = 47630 * 0.15
	if income <= 95259 then
		tax += (income - 47630) * 0.205
	else
		tax += (95259-47630) * 0.205
		if income <= 147667 then
			tax += (income-95259) * 0.26
		else
			tax += (147667-95259) * 0.26
			if tax <= 210371 then
				tax += (income-147667) * 0.29
			else
				tax += (210371-147667) * 0.29
				tax += (income-2110371) * 0.33
			end
		end
	end
end

puts "You owe $#{tax} in federal taxes"