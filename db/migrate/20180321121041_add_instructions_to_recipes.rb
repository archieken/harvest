class AddInstructionsToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :instructions, :text, array:true, default: []
  end
end
