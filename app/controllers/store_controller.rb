class StoreController < ApplicationController
  def index
    @products = Product.order :title
    @counter = increment_count
  end

  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end
end
