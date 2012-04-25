class StoreController < ApplicationController
  def index
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    else
      @products = Product.find_products_for_sale
      @counter = visit_counter
      @cart = current_cart
      @exchange_rate = ExchangeRate.find_by_locale(I18n.locale)
    end
  end
  
  private 
  
  def visit_counter
    if session[:counter].nil?
      session[:counter]= 0
    end
    session[:counter] += 1
  end
       
end