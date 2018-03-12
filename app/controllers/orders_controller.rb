class OrdersController < ApplicationController
  def index
    @order_lines = Order.where(user: current_user).find_by(status: "new").order_lines
  end
end
