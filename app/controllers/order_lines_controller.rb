class OrderLinesController < ApplicationController
  def create

   # if (current_user.orders.find_by(active: )
   order = Order.create
   OrderLine.create(product: Product.find(params[:product_id].to_i), quantity: 1, order: order)

  end
end
