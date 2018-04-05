class SubscriptionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def about?
    true
  end

  def new?
    true
  end

  def create_subscription?
    true
  end
end
