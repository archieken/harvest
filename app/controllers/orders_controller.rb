class OrdersController < ApplicationController
  skip_before_action :authenticate_user!
  def index

    if !current_user.nil?
    Contact.find_by(user_id: current_user.id) ? @contact = Contact.find_by(user_id: current_user.id) : @contact = Contact.create(user_id: current_user.id)
    end

    @orders = policy_scope(Order)
    authorize @orders

    if (Order.where(user: current_user).nil? || Order.where(user: current_user).find_by(status: "new").nil?)

      @order = Order.create(user: current_user)
      @order.order_lines = OrderLine.all
    else

      @order =Order.where(user: current_user).find_by(status: "new")
      @order_lines = Order.where(user: current_user).find_by(status: "new").order_lines

    end
  end

  def history
    if !current_user.nil?
      @orders = Order.where(user_id: current_user.id)
      authorize @orders
    end
  end

  def reorder
  end
end
