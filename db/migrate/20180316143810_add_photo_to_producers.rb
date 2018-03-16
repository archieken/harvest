class AddPhotoToProducers < ActiveRecord::Migration[5.1]
  def change
    add_column :producers, :photo, :string
  end
end
