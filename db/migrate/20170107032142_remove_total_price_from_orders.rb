class RemoveTotalPriceFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :total_price, :integer
  end
end
