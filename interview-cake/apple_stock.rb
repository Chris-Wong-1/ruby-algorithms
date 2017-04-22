# Writing programming interview questions hasn't made me rich. Maybe trading Apple stocks will.
# Suppose we could access yesterday's stock prices as a list, where:

# The values are the price in dollars of Apple stock.
# A higher index indicates a later time.
# So if the stock cost $500 at 10:30am and $550 at 11:00am, then:

# stock_prices_yesterday[60] = 500

# Write an efficient function that takes stock_prices_yesterday and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

# For example:

#   stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

# get_max_profit(stock_prices_yesterday)
# # returns 6 (buying for $5 and selling for $11)

# No "shorting"—you must buy before you sell. You may not buy and sell in the same time step (at least 1 minute must pass).

# # This is a brute force n^2 solution
# def get_max_profit(stock_prices_yesterday)
# 	current_max = 0
# 	stock_prices_yesterday.each do |buy|
# 		stock_prices_yesterday.each do |sell|
# 			if current_max < (sell - buy)
# 				current_max = (sell - buy)
# 			end
# 		end
# 	end
# 	current_max
# end

# This solution is O(n) time and O(1) space but does not handle the case of an entire day of decreasing prices correctly
# def get_max_profit(stock_prices_yesterday)
# 	current_low = stock_prices_yesterday[0]
# 	current_high = stock_prices_yesterday[0]
# 	max_profit = 0
# 	stock_prices_yesterday.each do |price|
# 		if price > current_high
# 			current_high = price
# 		end
# 		if max_profit < price - current_low
# 			max_profit = price - current_low
# 		end
# 		if price < current_low
# 			current_low = price
# 			current_high = price
# 		end
# 	end
# 	max_profit
# end

# SOULTION

def get_max_profit(stock_prices_yesterday)
	# Check that there are atleast two prices required for a buy/sell
	if stock_prices_yesterday.length < 2
		raise IndexError, 'At least two prices are required'
	end

	# Initialize min_price and max_profit for the first possible buy/sell
	min_price = stock_prices_yesterday[0]
	max_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]

	stock_prices_yesterday.each_with_index do |price, index|
		# skip the first price since we used it to initialize
		if index == 0
			next
		end

		# check the potential profit for the current price
		potential_profit = price - min_price

		# update max_profit if the potential profit is greater
		max_profit = [max_profit, potential_profit].max

		# update min_price so it's always the lowest we've seen so far
		# it's important that min_price updates AFTER potential profit has been checked
		min_price = [min_price, price].min
	end
	
	return max_profit
end

prices = [10, 7, 5, 8, 11, 9]

p get_max_profit(prices)