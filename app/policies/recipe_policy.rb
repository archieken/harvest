class RecipePolicy < ApplicationPolicy
  def show?
    true
  end

  def order_recipe?
    true
  end
end
