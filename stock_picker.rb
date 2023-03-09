def stock_picker(stock_prices)
    best_buy_sell = []
    best_profit = 0

    stock_prices.each_with_index do |buy, b_index|
        stock_prices.each_with_index do |sell, s_index|
            difference = sell - buy
            if s_index > b_index && difference > best_profit 
                best_profit = difference
                best_buy_sell = [b_index, s_index]
            end
        end
    end
    best_buy_sell
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([1,3,6,19,25,8,6,110,10,50,114])
stock_picker([27,13,16,19,15,45,6,100,105,200])
stock_picker([7,3,6,1,18,15,8,20,1])
