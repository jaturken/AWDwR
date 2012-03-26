class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
  end
<<<<<<< HEAD
=======
  
>>>>>>> origin/master
end
