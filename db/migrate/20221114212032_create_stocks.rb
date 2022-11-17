class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.integer :market_cap
      t.float :price
      t.float :volume
      t.float :last_annual_dividend
      t.boolean :is_actively_trading
    end
  end
end
