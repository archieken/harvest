class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index

    @products = policy_scope(Product)
    authorize @products

    @vegetables = @products.where(category: Category.find_by(name: "vegetables"))
    authorize @vegetables

    @fruits = @products.where(category: Category.find_by(name: "fruits"))
    authorize @fruits

    @meats = @products.where(category: Category.find_by(name: "meat"))
    authorize @meats

    @fish = @products.where(category: Category.find_by(name: "fish"))
    authorize @fish

    @dairy = @products.where(category: Category.find_by(name: "dairy & eggs"))
    authorize @dairy

    @bakery = @products.where(category: Category.find_by(name: "bakery"))
    authorize @bakery

    @wine = @products.where(category: Category.find_by(name: "wine & drinks"))
    authorize @wine

    @pantry = @products.where(category: Category.find_by(name: "pantry"))
    authorize @pantry

    @deli = @products.where(category: Category.find_by(name: "deli"))
    authorize @deli

    Contact.find_by(user_id: current_user.id) ? @contact = Contact.find_by(user_id: current_user.id) : @contact = Contact.create(user_id: current_user.id)
    @orders = policy_scope(Order)
    authorize @orders
    if (Order.where(user: current_user).nil? || Order.where(user: current_user).find_by(status: "new").nil?)
      @order = Order.new
      @order_lines
    else
      @order =Order.where(user: current_user).find_by(status: "new")
      @order_lines = @order.order_lines
    end
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end
end
