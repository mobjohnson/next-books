class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.references :collection, index: true
      t.references :book, index: true
    end
  end
end
