class PaymentPolicy < ApplicationPolicy



class Scope < Scope
    def resolve
        scope.all
    end
  end


  def new?
      true
    end

    def create?
      true
    end


    def checkout?
      true
    end

    def confirmation?
      true
    end


  private

    def set_order?
      true
    end
end
