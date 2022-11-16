puts "🌱 Seeding spices..."

puts "creating stocks"
Stock.create(ticker: ,shares: ,equity: ,total_cost: ,market_value: ,current_value: ,investor_id: ,company_id:)
Stock.create(ticker: ,shares: ,equity: ,total_cost: ,market_value: ,current_value: ,investor_id: ,company_id:)
Stock.create(ticker: ,shares: ,equity: ,total_cost: ,market_value: ,current_value: ,investor_id: ,company_id:)
Stock.create(ticker: ,shares: ,equity: ,total_cost: ,market_value: ,current_value: ,investor_id: ,company_id:)
Stock.create(ticker: ,shares: ,equity: ,total_cost: ,market_value: ,current_value: ,investor_id: ,company_id:)
Stock.create(ticker: ,shares: ,equity: ,total_cost: ,market_value: ,current_value: ,investor_id: ,company_id:)

puts "creating investors"
Investor.create(name: "nick" ,email: "nick@gmail.com",phone: 9712235575 ,age: 26,occupation: "Financial Advisor")
Investor.create(name: "chris",email: "chris@gmail.com",phone: 5766589991,age: 31,occupation: "sales manager")
Investor.create(name: "jack",email: "jack@hotmail.com",phone: 4132189191,age: 44,occupation: "business owner")
Investor.create(name: "henry",email: "henry@yahoo.com",phone: 5546780153,age: 22,occupation: "student")


puts "creating companies"
Company.create(name: "apple",ceo: "tim cook",employee_count: 1000,location: "Cuppertino, Ca",market_cap: 30000000.23, price_at_after_hour: 202,open_price: 198,close_price: 202,short_term_prediction: "buy",long_term_prediction: "buy", bull: true)
Company.create(name: "twitter",ceo: "elon",employee_count: 2500,location: "san francisco",market_cap: 15000939.21, price_at_after_hour: 50,open_price: 49,close_price: 51,short_term_prediction: "sell",long_term_prediction: "sell",bull: false)
Company.create(name: "yahoo",ceo: "jack",employee_count: 200,location: "indiana",market_cap: 20000000.23, price_at_after_hour: 10, open_price: 10, close_price: 10, short_term_prediction: "buy", long_term_prediction: "sell", bull: false)
Company.create(name: "google",ceo: "randy",employee_count: 100000,location: "seattle",market_cap: 999999999.99,price_at_close: 400,price_at_after_hour: 400,open_price: 395,close_price: 400,short_term_prediction: "buy", long_term_prediction: "sell", bull: true)
Company.create(name: ,ceo: ,employee_count: ,location: ,market_cap: , open_price: ,close_price: ,short_term_prediction: ,long_term_prediction: ,bull: false)
Company.create(name: ,ceo: ,employee_count: ,location: ,market_cap: , open_price: ,close_price: ,short_term_prediction: ,long_term_prediction: ,bull: true)

# Seed your database here

puts "✅ Done seeding!"
