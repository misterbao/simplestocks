class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
      @nothing = "You Forgot to Enter a Ticker Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
          @error = "That Ticker Symbol Does Not Exist, Please Try Another"
      end
    end

  end

  def about
  end

end
