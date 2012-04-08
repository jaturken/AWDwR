class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @counter = visit_counter
    @cart = current_cart
  end
  
  private 
  
  def visit_counter
    if session[:counter].nil?
      session[:counter]= 0
    end
    session[:counter] += 1
  end
       
end