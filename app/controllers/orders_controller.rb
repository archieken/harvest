class OrdersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def history
    if !current_user.nil?
      @orders = Order.where(user_id: current_user.id)
      authorize @orders
    end
  end
end
