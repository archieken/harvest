class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.all
    end
  end

  def index?

    return true
  end

  def create?
    return true
  end

  def history?
    return true
  end

  def reorder?
    return true
  end

  def order_recipe?
    return true
  end
end
