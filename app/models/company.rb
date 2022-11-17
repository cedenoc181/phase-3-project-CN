
class Company < ActiveRecord::Base
    has_many :stocks
    has_many :investors, through: :stocks

    def company_profile
        "#{self.company_name}, #{self.location}, #{self.sector}, #{self.exchange_short_name}"
    end

    def currently_trading
        self.stocks.where(is_actively_trading: true)
    end

    def add_company(company_name, location, sector, industry, exchange_short_name)
       self.create(company_name: company_name, location:location, sector:sector, industry:industry, exchange_short_name:exchange_short_name) 
       unless 
        self.currently_trading == true
       end
    end

end

#actively trading companies
# find/create a company that doesnt exist in the database


