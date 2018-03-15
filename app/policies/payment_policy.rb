class PaymentPolicy < ApplicationPolicy
  def new
      true
    end

    def create
      true
    end

    def checkout
      true
    end


  private

    def set_order
      true
    end
end
