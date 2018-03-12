class OrderLinesController < ApplicationController
  def create

   # if (current_user.orders.find_by(active: )
   order = Order.create
   OrderLine.create(product: Product.find(params[id]), order: order)

  end
end
