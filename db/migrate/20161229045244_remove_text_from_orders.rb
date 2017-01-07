class RemoveTextFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :text, :string
  end
end
