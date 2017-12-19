class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|
      t.integer :amount
      t.decimal :total_price
      t.decimal :price

      t.timestamps
    end
  end
end
