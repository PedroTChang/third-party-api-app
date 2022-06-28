class StockTickersController < ApplicationController
  def index
    response = HTTP.get("https://api.stockdata.org/v1/data/quote?symbols=#{params[:search_terms]}&api_token=#{Rails.application.credentials.stock_data[:api_key]}")
    render json: response.parse(:json)
  end
end
