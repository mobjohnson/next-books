class RemoveCoverIdFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :cover_id, :string
  end
end
