class RemoveTotalTaxFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :total_tax, :integer
  end
end
