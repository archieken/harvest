class Product < ApplicationRecord
  belongs_to :producer
  belongs_to :category
  has_many :order_lines
  has_one :nutrient
  has_many :orders, through: :order_lines
  monetize :price_cents
  has_many :ingredients
  has_many :recipes, through: :ingredients
end
