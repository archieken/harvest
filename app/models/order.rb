class Order < ApplicationRecord
  belongs_to :user
  has_many :order_lines
  has_many :products, through: :order_lines
  monetize :amount_cents

  validates :status, presence: true, inclusion: ["new","paid"]
end
