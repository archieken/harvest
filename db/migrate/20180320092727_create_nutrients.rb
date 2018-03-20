class CreateNutrients < ActiveRecord::Migration[5.1]
  def change
    create_table :nutrients do |t|
      t.integer :fatquant
      t.string :fatunit
      t.integer :calquant
      t.string :calunit
      t.integer :sugarquant
      t.string :sugarunit
      t.integer :proteinquant
      t.string :proteinunit
      t.integer :sodiumquant
      t.string :sodiumunit
      t.integer :carbsquant
      t.string :carbsunit
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
