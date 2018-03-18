prices = [17,3,6,9,15,8,6,1,10]

return_ratio = 0

(prices.first prices.size - 1).each_with_index do |buy, index|
	puts "Buy: #{buy}, Index: #{index}"

	prices.drop(index + 1).each do |sell|
		puts "Sell: #{sell}"
	end

end
