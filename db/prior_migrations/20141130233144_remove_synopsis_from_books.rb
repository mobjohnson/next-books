class RemoveSynopsisFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :synopsis, :string
  end
end
