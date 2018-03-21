class RecipesController < ApplicationController
  skip_after_action :verify_authorized
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe

  end


end




