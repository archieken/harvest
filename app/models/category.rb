class Category < ApplicationRecord
  has_many :products

  validates :subcategory, presence: true, inclusion: ["vegetables", "fruits", "meat", "fish", "dairy & eggs", "bakery", "wine & drinks", "pantry", "deli"]
end
