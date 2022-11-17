class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get '/companies' do 
      companies = Company.all
      companies.to_json
    end

    get '/stocks' do 
      stocks_all = Stock.all
      stocks_all.to_json
    end

    get '/stocks/:id' do
      stk = Stock.find(params[:id])
      stk.to_json
    end
    

    get '/companies/company_profile/:id' do 
      profile = Company.company_profile.find(params[:id])
      profile.to_json
    end

    post '/companies' do
      new_company = Company.create(
        company_name: params[:company_name],
        location: params[:location],
        sector: params[:sector],
        share_owned: params[:share_owned],
        assets_under_management: params[:assets_under_management]
      )
      new_company.to_json
    end

    get '/companies/:id' do
      comp = Company.find(params[:id])
      comp.to_json
    end

    patch '/companies/:id' do
      company = Company.find(params[:id])
      company.update(
        share_owned: params[:share_owned],
        assets_under_management: params[:assets_under_management]
      )
      company.to_json
    end

    delete '/companies/:id' do
      d_comp = Company.find(params[:id])
      d_comp.destroy
      d_comp.to_json
    end

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

  end
  