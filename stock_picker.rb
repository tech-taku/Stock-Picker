def stock_picker(stock_prices)
  # Variables to store the best_buy_day, best_sell_day, and maximum_profit
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0

  # Loop through each day to find the best buy and sell days
  stock_prices.each_with_index do |buy_price, buy_day|

    # Iterate over remaining days to find the best sell day
    (buy_day + 1...stock_prices.length).each do |sell_day|
      sell_price = stock_prices[sell_day]

      # Calculate potential profit
      potential_profit = sell_price - buy_price
      
      # Update best buy day, best sell day, and maximum profit if potential profit is greater
      if potential_profit > max_profit
        max_profit = potential_profit
        best_buy_day = buy_day
        best_sell_day = sell_day
      end
    end 
  end

  # Return an array containing the best buy day and best sell day
  [best_buy_day, best_sell_day]

end

# Test the function with the provided stock prices and print the result
stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
print stock_picker(stock_prices)
