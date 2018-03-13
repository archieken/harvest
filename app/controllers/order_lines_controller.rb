class OrderLinesController < ApplicationController
  def create
    if (!current_user.orders.find_by(status:"new").blank?)
      order = current_user.orders.find_by(status:"new")
      OrderLine.create!(product: Product.find(params[:product_id].to_i), quantity: 1, order: order)
      puts "existing"
    else
      order = Order.create(user: current_user)
      OrderLine.create(product: Product.find(params[:product_id].to_i), quantity: 1, order: order)
      puts "new"
    end
  end


  def destroy
    OrderLine.destroy(params[:id])
  end
end
