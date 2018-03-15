class OrderLinesController < ApplicationController
skip_after_action :verify_authorized, except: :check_address
skip_before_action :authenticate_user!, except: :add_to_basket


  def add_to_basket
    if ((!current_user.orders.nil?) && (!current_user.orders.find_by(status:"new").blank?))
      order = current_user.orders.find_by(status:"new")

      @orderline = OrderLine.create!(product: Product.find(params[:id].to_i), quantity: 1, order: order)
      authorize @orderline
      order.amount = order.amount + @orderline.product.price
      order.save
    else
      order = Order.create(user: current_user)
      @orderline = OrderLine.create(product: Product.find(params[:id].to_i), quantity: 1, order: order)
      authorize @orderline
      order.amount = @orderline.product.price
      order.save
    end
   # flash[:basket_flash]
    redirect_back(fallback_location: products_path)
  end

  def update
    @orderline = OrderLine.update(params[:id])
    authorize @orderline
  end

   def add
    orderline = OrderLine.find(params[:id])
    orderline.quantity = orderline.quantity + 1
    orderline.save
    authorize orderline
    redirect_back(fallback_location: products_path)
  end

   def remove
    orderline = OrderLine.find(params[:id])

      if orderline.quantity > 0
        orderline.quantity = orderline.quantity - 1
        orderline.save
        authorize orderline

      else
        orderline.destroy
      end
      redirect_back(fallback_location: products_path)
    end

  def destroy
    @orderline = OrderLine.find(params[:id])
    authorize @orderline
    @orderline.destroy
    redirect_back(fallback_location: products_path)
  end
end
