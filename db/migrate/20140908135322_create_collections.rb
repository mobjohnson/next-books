class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.integer :user_id
      t.integer :author_id
    end
  end
end
