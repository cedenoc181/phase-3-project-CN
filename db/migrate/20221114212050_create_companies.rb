class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ceo
      t.integer :employee_count
      t.string :location
      t.float :market_cap
      t.integer :price_at_after_hour
      t.integer :open_price
      t.integer :close_price
      t.string :short_term_prediction
      t.string :long_term_prediction
      t.boolean :bull
    end
  end
end
