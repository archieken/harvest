class CreateOrderLines < ActiveRecord::Migration[5.1]
  def change
    create_table :order_lines do |t|
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
