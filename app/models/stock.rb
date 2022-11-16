# require 'pry'
class Stock < ActiveRecord::Base
    belongs_to :company
    belongs_to :investor 

    def self.most_expensive
        self.all.max_by {|stock| stock.price}
    end

    def max_cap
        self.all.order(:market_cap).max
    end

    def min_cap
        self.all.order(:market_cap).min
    end

    def order
        # binding.pry
        all_stocks.sort
    end
end

# most expensive
# shares available
# sort alphabetically
# largest market cap finder
# max and min market cap
