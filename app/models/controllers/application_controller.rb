class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    # get '/companies' do 

    #   companies = Company.all
  
    #   companies.to_json
    # end

    get '/stocks/by_price' do
      stock = Stock.by_price
      stock.to_json
    end


    get '/stocks/most_expensive' do
      stocks = Stock.most_expensive
      stocks.to_json
    end

    get '/stocks/max_cap' do
      stock_max = Stock.max_cap
      stock_max.to_json
    end

    get '/stocks/min_cap' do
      stock_min = Stock.min_cap
      stock_min.to_json
    end

    get '/stocks/a_to_z' do
      stock_az = Stock.a_to_z
      stock_az.to_json
    end

  end
  