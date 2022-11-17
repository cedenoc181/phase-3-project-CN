class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :location
      t.string :sector
      t.integer :share_owned
      t.integer :assets_under_management
    end
  end
end
