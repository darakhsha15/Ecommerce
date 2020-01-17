class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :addresstype
      t.string :line1
      t.string :line2
      t.string :street
      t.string :landmark
      t.string :city
      t.string :state
      t.integer :pincode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
