class Recipe < ApplicationRecord
  belongs_to :producer
  has_many :ingredients
  has_many :products, through: :ingredients
end
