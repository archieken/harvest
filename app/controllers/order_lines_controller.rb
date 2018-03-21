class OrderLinesController < ApplicationController
skip_after_action :verify_authorized, except: :check_address
skip_before_action :authenticate_user!, except: :add_to_basket


  def add_to_basket
    unless current_user.orders.nil? || current_user.orders.find_by(status:"new").blank?

      order = current_user.orders.find_by(status:"new")
      @orderline = OrderLine.create!(product_id: Product.find(params[:id]).id, quantity: 1, order: order)
      authorize @orderline
      order.amount = order.amount + @orderline.product.price
      order.save!
    else
      order = Order.create!(user: current_user, status: "new" )
      @orderline = OrderLine.create!(product_id: Product.find(params[:id]).id, quantity: 1, order: order)
      authorize @orderline
      order.amount = @orderline.product.price
      order.save!
    end
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

    order.amount = order.amount - @orderline.product.price
    order.save!

      if orderline.quantity > 1
        orderline.quantity = orderline.quantity - 1
        orderline.save!
        authorize orderline
      else
        orderline.destroy!
      end
      redirect_back(fallback_location: products_path)
    end

  def destroy
    @orderline = OrderLine.find(params[:id])
    authorize @orderline
    @orderline.destroy
    redirect_back(fallback_location: products_path)
  end

  def reorder
    @order = Order.find(params[:id])
    @order.products.each do |product|
      reorder_product(product)
    end
    authorize @order
    redirect_back(fallback_location: products_path)
  end

  def reorder_product(product)
    unless current_user.orders.nil? || current_user.orders.find_by(status:"new").blank?
      @order = current_user.orders.find_by(status:"new")
      @orderline = OrderLine.create!(product_id: product.order_lines.find_by(order_id: params[:id]).product_id, quantity: product.order_lines.find_by(order_id: params[:id]).quantity, order: @order)
      authorize @order
      authorize @orderline
      @order.amount = @order.amount + @orderline.product.price*@orderline.quantity
      @order.save!
    else
      @order = Order.create!(user: current_user, status: "new")
      @orderline = OrderLine.create(product_id: product.order_lines.find_by(order_id: params[:id]).product_id, quantity: product.order_lines.find_by(order_id: params[:id]).quantity, order: @order)
      authorize @orderline
      authorize @order
      @order.amount = @orderline.product.price*@orderline.quantity
      @order.save!
    end
    flash[:reorder_product] = "Order has been added to your basket."
  end
end
