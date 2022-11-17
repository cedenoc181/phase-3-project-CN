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

def self.delete_investor(id)
Investor.find_by(id: id).destroy
end 

def self.new_investor(name, email, age, password, phone, shares, value, company )
Investor.create(name: name, email: email, age: age, password: password, phone: phone, company_shares: shares, total_portfolio_value: value, company: company)
end

def update_all_values(name, email, age, password, phone, shares, value, company )
self.update(name: name, email: email, age: age, password: password, phone: phone, company_shares: shares, total_portfolio_value: value, company: company)
save
end
end

#investor profile name, email, password, phone number, age
# list of stocks
# stocks bought
# update watchlist/ delete
# update number of shares
# created stock list create array >> in instances
