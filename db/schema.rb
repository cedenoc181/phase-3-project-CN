# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_14_212050) do

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "location"
    t.string "sector"
    t.integer "share_owned"
    t.integer "assets_under_management"
  end

  create_table "investors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.integer "age"
    t.string "password"
    t.integer "company_shares"
    t.float "total_portfolio_value"
    t.integer "company_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "ticker"
    t.integer "market_cap"
    t.float "price"
    t.float "volume"
    t.float "last_annual_dividend"
    t.boolean "is_actively_trading"
  end

end
