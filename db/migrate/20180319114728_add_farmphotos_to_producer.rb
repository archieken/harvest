class AddFarmphotosToProducer < ActiveRecord::Migration[5.1]
  def change
    add_column :producers, :Farmphotos, :string, array: true, default: []
  end
end
