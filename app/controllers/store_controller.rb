class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @products = Product.all.order(:title)

    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end

    @counter = session[:counter]
    @cart = current_cart

  #   # puts "-------------"
  #   # puts session[:counter]
  #   # puts "-------------"

  #   # session[:counter] = 1
end

end
