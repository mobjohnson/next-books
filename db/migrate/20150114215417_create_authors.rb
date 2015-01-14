class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :collection_id
      t.integer :book_id
    end
  end
end
