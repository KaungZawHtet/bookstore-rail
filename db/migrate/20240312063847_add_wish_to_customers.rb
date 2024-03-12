class AddWishToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :wish, :string
  end
end
