class AddWishToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :wish, :string
  end
end
