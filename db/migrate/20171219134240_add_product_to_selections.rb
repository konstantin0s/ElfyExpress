class AddProductToSelections < ActiveRecord::Migration[5.1]
  def change
    add_reference :selections, :product, foreign_key: true
  end
end
