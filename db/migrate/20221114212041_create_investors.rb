class CreateInvestors < ActiveRecord::Migration[5.2]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :age
      t.string :password
      t.integer :company_shares
      t.float :total_portfolio_value
    end
  end
end
