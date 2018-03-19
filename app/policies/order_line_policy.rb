class OrderLinePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.all
    end
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def add?
    true
  end

  def remove?
    true
  end

  def add_to_basket?
    true
  end

  def reorder?
    true
  end
end
