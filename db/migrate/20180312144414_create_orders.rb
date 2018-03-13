class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.monetize :amount, currency: { present: false }
      t.string :status, default: "new"
      t.jsonb :payment
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
