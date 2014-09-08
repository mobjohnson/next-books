class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.references :user, index: true
      t.references :author, index: true
    end
  end
end
