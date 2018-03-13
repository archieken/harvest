class OrdersController < ApplicationController
  def index
    if (Order.where(user: current_user).nil? || Order.where(user: current_user).find_by(status: "new").nil?)
      @order = Order.new
      @order_lines = OrderLine.all
    else
      @order =Order.where(user: current_user).find_by(status: "new")
      @order_lines = Order.where(user: current_user).find_by(status: "new").order_lines
    end
  end
end
