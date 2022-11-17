# require 'pry'
class Investor < ActiveRecord::Base
    belongs_to :company
    has_many :stocks, through: :companies
   

def profile
    "#{self.name} #{self.email} #{self.password} #{self.phone} #{self.phone}"
end

def all_stocks
    # binding.pry
    self.stocks
end

def self.shares_bought
  
end


end

#investor profile name, email, password, phone number, age
# list of stocks
# stocks bought
# update watchlist/ delete
# update number of shares
# created stock list create array >> in instances
