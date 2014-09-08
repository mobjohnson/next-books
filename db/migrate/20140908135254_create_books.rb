class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :date
      t.string :synopsis
      t.string :cover_id
      t.string :isbn
      t.integer :author_id
    end
  end
end
