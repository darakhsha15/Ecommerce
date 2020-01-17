class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.string :order_type
      t.decimal :payable_price
      t.string :tracking_no
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
