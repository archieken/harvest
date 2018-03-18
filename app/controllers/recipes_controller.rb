class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe
  end
end
