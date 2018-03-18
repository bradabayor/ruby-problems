prices = [17,3,6,9,15,8,6,1,10]

profit = 0
bought = 0
sold = 0

(prices.first prices.size - 1).each_with_index do |buy, i|
	# puts "Buy: #{buy}, Index: #{i}"
	prices.drop(i + 1).each_with_index do |sell, j|
		temp_profit = sell - buy
		if temp_profit > profit
			profit = temp_profit
			bought = i
			sold = j + (i + 1)
		end
		# puts "Sell: #{sell}, Profit: #{profit} Index: #{j}"
	end

end
puts "Bought: #{bought}, Sold: #{sold}"
