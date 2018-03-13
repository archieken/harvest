class AddCoordinatesToPostCodeChecker < ActiveRecord::Migration[5.1]
  def change
    add_column :post_code_checkers, :latitude, :float
    add_column :post_code_checkers, :longitude, :float
  end
end
