class Stock < ActiveRecord::Base
    belongs_to :company
    belongs_to :investor 

    def self.most_expensive
        self.all.max_by {|stock| stock.market_value}
    end

   
    def self.shares_available
       shares = self.all {|stock| stock.shares}
    end

end

# most expensive
# shares available
# calculated equity
# calculated total cost
#