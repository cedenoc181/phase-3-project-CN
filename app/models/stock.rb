class Stock < ActiveRecord::Base
    belongs_to :company
    belongs_to :investor 

    def self.most_expensive
        
        self.all.max_by {|stock| stock.price}
    end

    def self.max_cap
        
        self.all.max_by {|stock| stock.market_cap}
    end

    def self.min_cap
        self.all.min_by {|stock| stock.market_cap}
    end

    def a_to_z
        Stock.all.sort {|a, b| a <=> b}
    end
end

# most expensive
# shares available
# sort alphabetically
# largest market cap finder
# max and min market cap
