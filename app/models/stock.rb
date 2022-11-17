require 'pry'
class Stock < ActiveRecord::Base
    has_many :companies
    has_many :investors, through: :companies

    def self.by_price
        
        self.all.order(price: :desc)
    end

    def self.most_expensive
        binding.pry
        self.all.max_by {|stock| stock.price}
    end

    def self.max_cap
        
        self.all.max_by {|stock| stock.market_cap}
    end

    def self.min_cap
        self.all.min_by {|stock| stock.market_cap}
    end
end

