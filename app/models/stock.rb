class Stock < ActiveRecord::Base
    has_many :companies
    has_many :investors, through: :companies

    def self.by_price
        self.all.order(price: :desc)
    end

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
