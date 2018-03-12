class Order < ApplicationRecord
  belongs_to :user
  has_many :order_lines
  has_many :products, through: :order_lines
  monetize :amount_cents
end
