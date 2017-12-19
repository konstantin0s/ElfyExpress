class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :total_amount
      t.decimal :total_price
      t.boolean :bought

      t.timestamps
    end
  end
end
