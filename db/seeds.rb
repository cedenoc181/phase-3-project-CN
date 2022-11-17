puts "🌱 Seeding spices..."

puts "creating companies..."
c1 = Company.create(company_name: "apple",location: "california",sector: "real estate",share_owned: 20000, assets_under_management: 30000000)
c2 = Company.create(company_name: "google",location: "seattle",sector: "finance", share_owned: 5000, assets_under_management: 9749348)
c3 = Company.create(company_name: "samsung",location: "california",sector: "finance", share_owned: 900, assets_under_management: 88877743)
# Seed your database here
puts "creating investors..."
b1 = Investor.create(name: "nick", email: "n@gmail.com", phone: 1234567890, age: 32, password: "hat", company_shares: 500, total_portfolio_value: 140000)
b2 = Investor.create(name: "sam", email: "s@gmail.com", phone: 1112223333, age: 36, password: "phonecase", company_shares: 641, total_portfolio_value: 600000)
b3 = Investor.create(name: "chris", email: "chris@gmail.com", phone: 4567891234, age: 19, password: "macbook", company_shares: 95, total_portfolio_value: 12000)
b4 = Investor.create(name: "chad", email: "chad@gmail.com", phone: 8145555569, age: 24, password: "chair", company_shares: 310, total_portfolio_value: 40000)

puts "creating stocks..."
Stock.create(ticker: "AAPL", market_cap: 305220000000, price: 200.14, volume: 24527123.2, last_annual_dividend: 0.92, investor_id: b1.id, company_id: c1.id, is_actively_trading: true)
Stock.create(ticker: "META", market_cap: 501213000000, price: 141.52, volume: 36423519.4, last_annual_dividend: 0.88, investor_id: b2.id, company_id: c2.id, is_actively_trading: false)
Stock.create(ticker: "GOOG", market_cap: 704220900000, price: 54.67, volume: 13499424.6, last_annual_dividend: 0.31, investor_id: b3.id, company_id: c3.id, is_actively_trading: true)
Stock.create(ticker: "SMSG", market_cap: 101240000000, price: 99.12, volume: 25317133.7, last_annual_dividend: 0.68, investor_id: b4.id, company_id: c1.id, is_actively_trading: true)


puts "✅ Done seeding!"
