class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :date
      t.string :synopsis
      t.string :cover_id
      t.string :isbn
      t.references :author, index: true
    end
  end
end
