class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :producer, foreign_key: true
      t.string :title
      t.text :description
      t.text :instructions
      t.string :photo
      t.integer :difficulty

      t.timestamps
    end
  end
end
