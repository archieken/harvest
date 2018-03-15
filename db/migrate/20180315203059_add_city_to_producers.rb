class AddCityToProducers < ActiveRecord::Migration[5.1]
  def change
    add_column :producers, :city, :string, default: "Byron Bay"
  end
end
