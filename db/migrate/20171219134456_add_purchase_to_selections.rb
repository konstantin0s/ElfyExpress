class AddPurchaseToSelections < ActiveRecord::Migration[5.1]
  def change
    add_reference :selections, :purchase, foreign_key: true
  end
end
