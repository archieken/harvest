class OrderLinesController < ApplicationController
  def create
    if (!current_user.orders.find_by(status:"new").blank?)
      order = current_user.orders.find_by(status:"new")
      orderline = OrderLine.create!(product: Product.find(params[:product_id].to_i), quantity: 1, order: order)
      order.amount = order.amount + orderline.product.price
      order.save
    else
      order = Order.create(user: current_user)
      orderline = OrderLine.create(product: Product.find(params[:product_id].to_i), quantity: 1, order: order)
      order.amount = orderline.product.price
      order.save
    end
  end


  def destroy
    OrderLine.destroy(params[:id])
  end
end
