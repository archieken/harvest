class AddDescriptionToProducers < ActiveRecord::Migration[5.1]
  def change
    add_column :producers, :description, :text
  end
end
