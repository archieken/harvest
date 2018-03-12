class OrdersController < ApplicationController
  def index
    @order_lines = OrderLine.all
  end
end