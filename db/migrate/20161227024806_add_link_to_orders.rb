class AddLinkToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :link, :string
  end
end
