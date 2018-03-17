class PostCodeChecker < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

 #validates :address, presence: true

  #  def self.return_address(lat, long)
  #   latitude = lat
  #   longitude = long
  #   geo_localization = "#{latitude},#{longitude}"
  #   query = Geocoder.search(geo_localization).first
  #   return query.address
  # end

end


