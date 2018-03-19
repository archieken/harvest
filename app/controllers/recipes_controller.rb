class RecipesController < ApplicationController
  skip_after_action :verify_authorized
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe
    @recipe_ingredient = @recipe.products[0][:name]

    @label = nutrition
    @fat_quant = fat_quant


  end

  def nutrition

  @recipe.products.each do |name|
    @recipe.products[:name]
  end

    client = Edamam::Client.new(app_id: "87fcd877", app_key: "757ab6a2d95f52daf6f5f4b3634e0781")
    nutritional_data = client.food_database.nutritional_data(@recipe.products[0][:name])
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
    @label.send("total_nutrients")["Sugar"]["quantity"]
  end

  def sugar_unit
    @label.send("total_nutrients")["Sugar"]["unit"]
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

end




