class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.integer :shares
      t.float :equity
      t.float :total_cost
      t.float :market_value
      t.float :current_value
      t.integer :investor_id
      t.integer :company_id
    end
  end
end
