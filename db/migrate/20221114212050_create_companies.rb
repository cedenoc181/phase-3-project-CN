class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :location
      t.string :sector
      t.string :industry
      t.string :exchange_short_name
    end
  end
end
