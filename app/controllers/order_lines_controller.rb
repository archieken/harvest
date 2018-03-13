class OrderLinesController < ApplicationController



  def create
    if (!current_user.orders.find_by(status:"new").blank?)
      order = current_user.orders.find_by(status:"new")
      @orderline = OrderLine.create!(product: Product.find(params[:product_id].to_i), quantity: 1, order: order)
      authorize @orderline
      puts "existing"
    else
      order = Order.create(user: current_user)
      OrderLine.create(product: Product.find(params[:product_id].to_i), quantity: 1, order: order)
      authorize @orderline
      puts "new"
    end
  end

  def update
    @orderline = OrderLine.update(params[:id])
    authorize @orderline
  end


  def destroy
    @orderline = OrderLine.find(params[:id])
    authorize @orderline
    @orderline.destroy
  end
end
