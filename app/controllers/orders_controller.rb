class OrdersController < ApplicationController
  skip_before_action :authenticate_user!
  def index

    Contact.find_by(user_id: current_user.id) ? @contact = Contact.find_by(user_id: current_user.id) : @contact = Contact.create(user_id: current_user.id)

    @orders = policy_scope(Order)
    authorize @orders

    if (Order.where(user: current_user).nil? || Order.where(user: current_user).find_by(status: "new").nil?)

      @order = Order.new
      @order.order_lines = OrderLine.all
    else

      @order =Order.where(user: current_user).find_by(status: "new")
      @order_lines = Order.where(user: current_user).find_by(status: "new").order_lines

    end
  end
end
