class OrdersController < ApplicationController
  def index
    @orders = policy_scope(Order)
    authorize @orders
    if @orders.find_by(status: "new").nil?
      @order = Order.new
      @order.order_lines = OrderLine.all
    else
      @order = @orders.find_by(status: "new")
      @order_lines = @order.order_lines
    end
  end
end
