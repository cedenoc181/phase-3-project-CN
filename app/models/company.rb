require 'pry'
class Company < ActiveRecord::Base
    has_many :stocks
    has_many :investors, through: :stocks

    def company_profile
        binding.pry
        "#{self.company_name}, #{self.location}, #{self.sector}, #{self.assets_under_management}"
    end

    def currently_trading
        binding.pry
        self.stocks.where(is_actively_trading: true)
    end

    def add_company(company_name, location, sector, industry, exchange_short_name)
       self.find_or_create_by(company_name: company_name, location:location, sector:sector, industry:industry, exchange_short_name:exchange_short_name) 
       unless 
        self.currently_trading == true
       end
    end

end

#actively trading companies
# find/create a company that doesnt exist in the database


