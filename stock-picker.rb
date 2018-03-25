def stock_picker (prices)
	profit = 0
	(prices.first prices.size - 1).each_with_index do |buy, i|
		prices.drop(i + 1).each_with_index do |sell, j|
			if (sell - buy) > profit
				profit = sell - buy
				@bought = i
				@sold = j + i + 1
			end
		end
	end
	return [bought, sold]
end