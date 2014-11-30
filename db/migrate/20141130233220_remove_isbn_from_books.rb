class RemoveIsbnFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :isbn, :string
  end
end
