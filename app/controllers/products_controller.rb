class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = policy_scope(Product)
    authorize @products

    @vegetables = @products.where(category: Category.find_by(name: "vegetables"))
    authorize @vegetables

     if !current_user.nil?
      Contact.find_by(user_id: current_user.id) ? @contact = Contact.find_by(user_id: current_user.id) : @contact = Contact.create(user_id: current_user.id)
    end


    @orders = policy_scope(Order)
    authorize @orders

    if (Order.where(user: current_user).nil? || Order.where(user: current_user).find_by(status: "new").nil?)

      @order = Order.create!(status: "new", user: current_user)
      authorize @order
      @order_lines

    else

      @order =Order.where(user: current_user).find_by(status: "new")
      @order_lines = @order.order_lines

    end


    @recipes = Recipe.all

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


  end

  def show



    @product = Product.find(params[:id])
    authorize @product


    @label = nutrition
    @fat_quant = fat_quant
    @fat_unit = fat_unit
    @calories_quant = calories_quant
    @calories_unit = calories_unit
    @sugar_quant = sugar_quant
    @sugar_unit = sugar_unit
    @protein_quant = protein_quant
    @protein_unit = protein_unit
    @sodium_quant = sodium_quant
    @sodium_unit = sodium_unit
    @carbs_quant = carbs_quant
    @carbs_unit = carbs_unit
  end

  def nutrition

    product = "1 #{@product.name}"
    client = Edamam::Client.new(app_id: "87fcd877", app_key: "757ab6a2d95f52daf6f5f4b3634e0781")
    nutritional_data = client.food_database.nutritional_data("1 Melon")

    nutritional_data
  end

  def fat_quant
    @label.send("total_nutrients")["FAT"]["quantity"]
  end

  def fat_unit
    @label.send("total_nutrients")["FAT"]["unit"]
  end

  def calories_quant
    @label.send("total_nutrients")["ENERC_KCAL"]["quantity"]
  end

  def calories_unit
    @label.send("total_nutrients")["ENERC_KCAL"]["unit"]
  end

  def sugar_quant

    @label.send("total_nutrients")["SUGAR"]["quantity"]
  end

  def sugar_unit
    @label.send("total_nutrients")["SUGAR"]["unit"]
  end

  def protein_quant
    @label.send("total_nutrients")["PROCNT"]["quantity"]
  end

  def protein_unit
    @label.send("total_nutrients")["PROCNT"]["unit"]
  end

  def sodium_quant
    @label.send("total_nutrients")["NA"]["quantity"]
  end

  def sodium_unit
    @label.send("total_nutrients")["NA"]["unit"]
  end

  def carbs_quant
    @label.send("total_nutrients")["CHOCDF"]["quantity"]
  end

  def carbs_unit
    @label.send("total_nutrients")["CHOCDF"]["unit"]
  end

  # private

  # def cart_update

  #   Contact.find_by(user_id: current_user.id) ? @contact = Contact.find_by(user_id: current_user.id) : @contact = Contact.create(user_id: current_user.id)

  #   @orders = policy_scope(Order)
  #   authorize @orders

  #   if (Order.where(user: current_user).nil? || Order.where(user: current_user).find_by(status: "new").nil?)

  #     @order = Order.new
  #     @order.order_lines = OrderLine.all
  #   else

  #     @order =Order.where(user: current_user).find_by(status: "new")
  #     @order_lines = Order.where(user: current_user).find_by(status: "new").order_lines

  #   end
  # end
end
