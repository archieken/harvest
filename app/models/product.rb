class Product < ApplicationRecord
  belongs_to :producer
  belongs_to :category
  has_many :order_lines
  has_many :orders, through: :order_lines
  monetize :price_cents

end
