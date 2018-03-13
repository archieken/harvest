class OrdersController < ApplicationController
  def index
    @orders = policy_scope(Product)
    authorize @orders
  end
end
