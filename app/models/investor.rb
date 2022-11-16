class Investor < ActiveRecord::Base
    has_many :stocks
    has_many :companies, through: :stocks

def all_stocks
    stocks.map do |stock|
        stock.all
    end
end

def self.shares_bought
    Investor.first.stocks
end


end

# list of stocks
# stocks bought
# update watchlist
# update number of shares
# created stock list
