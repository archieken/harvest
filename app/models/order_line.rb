class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_many :users, through: :order
end
