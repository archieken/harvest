class CreatePostCodeCheckers < ActiveRecord::Migration[5.1]
  def change
    create_table :post_code_checkers do |t|
      t.string :address

      t.timestamps
    end
  end
end
