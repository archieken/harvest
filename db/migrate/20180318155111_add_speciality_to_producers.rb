class AddSpecialityToProducers < ActiveRecord::Migration[5.1]
  def change
    add_column :producers, :speciality, :string
  end
end
