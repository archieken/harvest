class Producer < ApplicationRecord
 #after_validation :geocode, if: :will_save_change_to_address?
 has_many :recipes
end
