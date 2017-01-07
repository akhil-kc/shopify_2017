class RemoveAuthorFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :author, :string
  end
end
